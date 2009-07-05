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

	def find(str)
    ind =  @key.index(str)
	  return @value[ind] if !(ind.nil?)
	end

  def isTwice(str, value) 
    ind1 =  @key.index(str)
    ind2 =  @key.rindex(str)
    value1 = @value[ind1].class
    value2 = @value[ind2].class
    # Para que devuelva que se encuentra duplicado, se deben cumplir 3 condiciones: 
    # Que aparezca 2 veces en el arreglo de string. 
    # Que pertenezcan a la misma clase. 
    # Que sea el elemento que hemos encontrado.  
    return  ind1!= ind2 && value1==value2 && value1.to_s == value
  end

	def delete(str)
	end

	def replace(str, sym)
	  @value[@key.index(str)]= sym
	end
end
