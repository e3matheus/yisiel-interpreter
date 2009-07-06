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

	def numeroAparece(str, value)
    cont = 0
    @key.each_index do |x|
       cont += 1 if (@key[x] == str && @value[x] == value)
    end 
    puts cont
	  return cont
	end

  def isTwice(str, value) 
    return  numeroAparece(str,value) >= 2 
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
