#= Título: 
#  Tabla de Simbolos 
#= Autores: 
#* Einis Rodriguez
#* Elias Matheus (mailto:e3matheus@gmail.com)
#= Contenido: 
#  Tabla de Simbolos del compilador del lenguaje yisiel.

class SymTable 
  attr_accessor :key, :value
	def initialize()
    #Se simula un hash
	  @key = Array.new()
	  @value = Array.new()
	end

	def insert(str, symbol)
    @key.push(str)
    @value.push(symbol)
	end

=begin
	def find(str) 
	  if @key.index(str).nil?
        return nil
      else		
	    return @value[@key.index(str)]
	  end
	end
=end

	def find(str, *value)
    cont = Array.new
    @key.each_index do |x|
      case value.length
        when 0  # Chequeo cuando son los parametros de un procedimiento
          cont.push(@value[x]) if (@key[x] == str)
        else    # Resto de los Chequeos.
          cont.push(@value[x]) if (@key[x] == str && @value[x].class.to_s== value[0])
      end
    end 
    return nil if cont.length == 0
	  return cont
	end

  def isTwice(str, *value) 
    case value.length
      when 0 # Chequeo para los parametros dentro de un procedimiento. No hay distincion, no pueden haber dos variables in y out con el mismo nombre
        return  find(str).length >= 2 
      else
        return  find(str, value[0]).length >= 2 
      end
  end

  def contiene?(str, symbol)
    return find(str,symbol).length >=1
  end

  def merge(symtable1, symtable2)
    key.concat(symtable1.key)
    key.concat(symtable2.key)
    value.concat(symtable1.value)
    value.concat(symtable2.value)
  end

	def delete(str)
	end

	def replace(str, sym)
	  @value[@key.index(str)]= sym
	end
end
