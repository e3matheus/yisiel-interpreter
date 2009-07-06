#= Título: 
# Clase Arbol Abstracto 
#= Autores: 
#* Einis Rodriguez
#* Elias Matheus (mailto:e3matheus@gmail.com)
#= Contenido: 
#  Contiene la clase abstracta de arbol del compilador de yisiel

class AST
  attr_accessor :num, :sign
	def initialize()
	end
  def check(*symtable)
  end
  def run(*symtable)
  end 
end

class ASTUnario < AST
  attr_accessor :term1
	def initialize(exp)
		@term1 = exp
	end
  def check(symtable, symtableG)
    @term1.check(symtable)  
  end
end 

class ASTBinario < AST
  attr_accessor :term1,:term2
	def initialize(term1, term2)
		@term1 = term1
		@term2 = term2
	end
  def check(*symtable)
    @term1.check(*symtable)  
    @term2.check(*symtable)
  end
end

class ASTTernario < AST
  attr_accessor :term1,:term2, :term3
	def initialize(term1, term2, term3)
		@term1 = term1
		@term2 = term2
		@term3 = term3
	end

  def check(*tabla)
    @term1.check()
    @term2.check()
    @term3.check($tablaGlobal)
  end 
end

class ASTMultiple < AST
  attr_accessor :hijos
	def initialize()
		@hijos = Array.new
	end
  def insertaHijo(hijo)
    @hijos.push(hijo)
  end
  def check()
    @hijos.each do |x|
      x.check()     
    end
  end
end

class ASTMultipleProc < ASTMultiple
  def check(*tabla)
    @hijos.each do |x|
      x.check(*tabla)     
    end
  end
end

class ASTDec < ASTBinario 
  def initialize(term1, term2, tabla)
    super(term1,term2)
    @term1.hijos.each do |hijo|
      if (@term2.class.to_s == 'TkValue') 
        tabla.insert(hijo.getId(), SymVar.new(hijo.getId(),hijo.getToken().line, hijo.getToken().col)) 
      else
        tabla.insert(hijo.getId(), SymArray.new(hijo.getId(),hijo.getToken().line,hijo.getToken().col,term2))
      end
    end
  end

  def check(*tabla)

    if (@term2.class.to_s == 'TkValue') 
      sym = 'SymVar'
    else
      sym = 'SymArray'
    end

    @term1.hijos.each do |hijo|
      begin
        case tabla.length
          when 0 # Revisa Solo la Tabla Global.
            bool = $tablaGlobal.isTwice(hijo.getId(), sym)
            raise DeclaracionRepetida, "Declaracion repetida en linea #{hijo.getToken().line}, columna #{hijo.getToken().col}" if bool 
         when 1 # Revisa una tabla local y la tabla global.
            supertabla = SymTable.new()
            supertabla.merge($tablaGlobal,*tabla)
            bool = supertabla.isTwice(hijo.getId(),sym) 
            raise DeclaracionRepetida, "Declaracion repetida en linea #{hijo.getToken().line}, columna #{hijo.getToken().col}" if bool 
        end
      rescue DeclaracionRepetida => err
        puts "\n#{err}"
      end
    end
  end

end

class ASTMath < ASTBinario
  def check(*symtable)
    @term1.check(*symtable)  
    @term2.check(*symtable)
  end
end

class ASTSuma < ASTMath
  def run(*symtable)
    term1 = @term1.run(*symtable) 
    term2 = @term2.run(*symtable) 	
   return term1 + term2
  end
end

class ASTResta < ASTMath
  def run(*symtable) 
    term1 = @term1.run(*symtable)  
    term2 = @term2.run(*symtable)  
   return term1 - term2
  end
end

class ASTMult < ASTMath
  def run(*symtable) 
    term1 = @term1.run(*symtable)  
    term2 = @term2.run(*symtable)  
   return term1 * term2
  end
end

class ASTDiv < ASTMath
 def run(*symtable)
    term1 = @term1.run(*symtable)  
    term2 = @term2.run(*symtable)  
   return term1 / term2 if term2 != 0
  end
end

class ASTResUnario < ASTUnario
  def check(*symtable)
   @term1.check(*symtable)  
  end
  def run(*symtable) 
    term1 = @term1.run(*symtable)  
   return term1*-1 
  end
end

class ASTRes < ASTMath
 def run(*symtable) 
    term1 = @term1.run(*symtable)  
    term2 = @term2.run(*symtable)  
   return term1 % term2
  end
end

class ASTBool < ASTBinario
end

class ASTConj < ASTBool
 def run(*symtable)
    term1 = @term1.run(*symtable)
	term2 = @term2.run(*symtable)
  end
end

class ASTDis < ASTBool
 def run(symtable)
    term1 = @term1.run(*symtable)
	term2 = @term2.run(*symtable)
	return term1 || term2
  end
end
  
class ASTNeg < ASTUnario
 def run(*symtable)
    term1 = @term1.run(*symtable)
	  return !term1
  end
end

class ASTLess < ASTBool
 def run(*symtable)
    term1 = @term1.run(*symtable)
	term2 = @term2.run(*symtable)
  return term1 < term2
  end
end
  
class ASTLeq < ASTBool
 def run(*symtable)
    term1 = @term1.run(*symtable)
	term2 = @term2.run(*symtable)
  return term1 <= term2
  end
end

class ASTGreat < ASTBool
 def run(*symtable)
    term1 = @term1.run(*symtable)
	term2 = @term2.run(*symtable)
  return term1 > term2
  end
end
  
class ASTGeq < ASTBool
 def run(*symtable)
    term1 = @term1.run(*symtable)
	term2 = @term2.run(*symtable)
  return term1 >= term2
  end
end
  
class ASTEqual < ASTBool
 def run(*symtable)
    term1 = @term1.run(*symtable)
	term2 = @term2.run(*symtable)
  return term1 == term2
  end
end
 
class ASTDif < ASTBool
 def run(*symtable)
    term1 = @term1.run(*symtable)
	term2 = @term2.run(*symtable)
  return term1 != term2
  end
end 

class ASTExpBool < ASTUnario
  def check(tabla)
  end
  def run(tabla)
    return @term1.value
  end
end

# Nuevos Arboles

class ASTDecTotal < ASTMultipleProc
  attr_accessor :tablaProc
  def initialize() 
    @tablaProc = SymTable.new()
		@hijos = Array.new
  end
end

class ASTProc < ASTMultiple
  attr_accessor :tabla, :parametros, :locales, :instrucciones
  def initialize(term1,term2, parametros, locales, instrucciones) 
    @locales = locales
    @instrucciones = instrucciones

    puts @instrucciones.hijos[0].class
    # Crear la tabla y se le pasa el arbol.    
    @tabla = locales.tablaProc
    arbol = @instrucciones

    # Insertar Valores en la tabla.
    # parametros son los parametros pasados a la tabla
    @parametros = parametros
    @parametros.hijos.each do |hijo|
      if (hijo.getModo() == 'in') 
        @tabla.insert(hijo.getId(), ParIn.new(hijo.getId(), hijo.getToken().line, hijo.getToken().col)) 
      else
        @tabla.insert(hijo.getId(), ParOut.new(hijo.getId(), hijo.getToken.line, hijo.getToken().col))
      end
    end    

    # Insertar procedimiento en la Tabla de Simbolos Global.
    simbolo = SymProc.new(term2.value, term1.line, term1.col, arbol, @tabla)
    $tablaGlobal.insert(term2.value,simbolo)
  end

  def check()
    supertabla = SymTable.new()
    supertabla.merge(@tabla,$tablaGlobal)
    return @parametros.check(@tabla) && @locales.check(@tabla) && @instrucciones.check(supertabla) 
  end
end

class ASTParametros < ASTBinario

  def getModo()
    return @term1.value.to_s
  end

  def getId()
    return @term2.value.to_s
  end

  def getToken()
    return @term1
  end

  def check(tabla)
    begin
      bool = tabla.isTwice(getId())
      if (bool) 
        raise DeclaracionRepetida, "Declaracion repetida en linea #{getToken().line}, columna #{getToken().col}."  
      end
      return bool 
    rescue DeclaracionRepetida => err
      puts "\n#{err}"
    end
  end

end

class ASTNum < ASTUnario
  def value()
   return @term1.value 
  end
  # si es un numero no hay ningun problema
  def check(*symtable)
  end
  def run(*symtable)
   return @term1.value 
  end
end 

class ASTId < ASTUnario
  def value()
    return @term1.value
  end
  def getToken()
    return @term1
  end
  def getId()
    return @term1.value
  end 
  def getPosicion()
    return 0
  end

  def check(*symtable)
    begin
      elem = symtable[0].find(@term1.value)
      # se chequea que haya sido declarada
      if elem.nil?
        raise VarNoDec, "No esta declarada la variable #{@term1.value}, en la linea #{@term1.line}, columna #{@term1.col}.\n"
      end
      # se debe chequear que no se use un arreglo como una variable
      elem.each_index do |x|
        elem.delete_at(x) if elem[x].class.to_s == "SymArray" ||  elem[x].class.to_s == "SymProc"
      end
        raise ErrdeTipo, "Utilizacion del arreglo o procedimiento '#{@term1.value}' como una variable simple, en la linea #{@term1.line}, columna #{@term1.col}.\n" if elem.empty?
      case symtable[1]
      when '2'
        # se debe chequear que no sea de tipo out la lectura.
        elem.each_index do |x|
          elem.delete_at(x) if elem[x].class.to_s == "ParOut"
        end
        raise VariableSoloEscritura, "La variable es de solo escritura. La variable esta en la linea #{getToken().line}, y columna #{getToken().col}" if elem.empty?
      when '1'
        # Chequeo si es ParIn
        elem.each_index do |x|
          elem.delete_at(x) if elem[x].class.to_s == "ParIn"
        end
          raise VariableSoloLectura, "La variable es de solo lectura. Se encuentra en la linea #{getToken.line()}, columna #{getToken().col}." if elem.empty?
      end
    rescue VariableSoloLectura => err
      puts err
    rescue VariableSoloEscritura => err
      puts "\n#{err}"
    rescue ErrdeTipo => err
      puts "\n#{err}"
    rescue VarNoDec => err
      puts "\n#{err}"
    end
  end

  def run(symtable)
   term1 = $tablaGlobal.find(@term1.value)
   return term1.value
  end
end

class ASTArray < ASTBinario
  def value()
   return @term1.value 
  end
  def getToken()
    return @term1
  end
  def getId()
    return @term1.value
  end
  def getPosicion()
    return @term2.value
  end
  def check(*symtable)
    elem = symtable[0].find(@term1.value)
    # se chequea que haya sido declarada
    if elem.nil?
      raise VarNoDec, "No esta declarada la variable #{@term1.value}, en la linea #{@term1.line}, columna #{@term1.col}.\n"
    end
    # se debe chequear que no se use una variable como un arreglo
    if elem.class.to_s == "SymVar" ||  elem.class.to_s == "SymProc"
      raise ErrdeTipo, "Utilizacion de la variable simple o procedimiento '#{@term1.value}' como un arreglo, en la linea #{@term1.line}, columna #{@term1.col}.\n"
    end
  end
end

class ASTAsig < ASTBinario
  def check(tabla)
    @term1.check(tabla, '1')
    @term2.check(tabla, '2') 
  end

  def run(tabla)
    variable = $tablaGlobal.find(@term1.getId())
    variable.setValue(@term1.getPosicion(), @term2.run('e')) 
    $tablaGlobal.replace(@term1.getId(), variable) 
  end 
end 

class ASTInvoca < ASTBinario
  def check(*tabla)
    begin
      # Se chequea si el procedimiento esta en la tabla de simbolo.
      elem = tabla[0].find(@term1.value, 'SymProc')
      raise ErrdeTipo, "No se encontro el procedimiento '#{@term1.value}'. Error en la linea #{@term1.line}, columna #{@term1.col}.\n" if elem.nil?
      parametros = elem[0].symtables[0]
      
      # Chequeo de Numero de Parametros.
      list = Array.new
      parametros.key.each_index do |x|
        t = parametros.value[x]
        list.push(t) if t.class.to_s == 'ParIn' || t.class.to_s == 'ParOut'
      end
      raise NumParametrosInvalidos, "El numero de parametros del procedimientos, es distinto al esperado." if list.length != @term2.hijos.length         

      # Chequeo de Parametros out de la invocacion.
      list.each_index do |x|
        if list[x].class.to_s == 'ParOut'
          raise OutError,"El valor utilizado en la variable de out debe ser un identificador. La variable esta en la linea #{@term1.line} y columna #{@term1.col}." if  @term2.hijos[x].class.to_s !='ASTId' && @term2.hijos[x].class.to_s !='ASTArray'
        end
      end
    rescue ErrdeTipo => err
        puts "\n#{err}"
    rescue NumParametrosInvalidos => err
        puts "\n#{err}"
    rescue OutError => err
        puts "\n#{err}"
    end
      
  end  
end
