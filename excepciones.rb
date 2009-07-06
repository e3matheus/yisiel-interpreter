#= Título:
# Excepciones Manejadas en el Programa.
#= Autores:
#* Einis Rodriguez
#* Elias Matheus (mailto:e3matheus@gmail.com)

# Descripción: Excepción que maneja los comentarios anidados.
class ComentarioAnidado < RuntimeError
end

# Descripción: Excepción que maneja los comentarios que nunca fueron cerrados.
class ComentarioInfinito < RuntimeError
end

# Descripción: Excepción que maneja los caracteres que no reconoce el lexer.
class CaracterInesperado < RuntimeError
end

# Descripción: Excepción que maneja cuando se declara 2 veces una variable.
class DeclaracionRepetida < RuntimeError
end

# Descripción: Excepción que maneja cuando se asigna una variable sin declarar.
class VariableSinIdentificar < RuntimeError
end

# Descripción: Excepción que maneja cuando una variable declarada in se intenta asignar.
class VariableSoloLectura < RuntimeError
end

# Descripción: Excepción que maneja cuando una variable declarada out se intenta leer.
class VariableSoloEscritura < RuntimeError
end

# Descripción: Excepción que maneja cuando se intenta hacer una operacion con el tipo de variable equivocado.
class TipoEquivocado < RuntimeError
end

# Descripción: Excepción que maneja cuando se intenta hacer llamar el procedimiento con una cantidad invalida de parametros.
class NumParametrosInvalidos < RuntimeError
end

# Descripción: Excepción que maneja cuando se intenta invocar un procedimiento con una variable de out, como numero o posicion de un arreglo.
class OutError < RuntimeError
end

# Descripción: Excepción que maneja los errores de utilizacion de tipo
class ErrdeTipo < RuntimeError
end

# Descripción: Excepción que maneja los errores cuando no se declara una variable usada en el programa
class VarNoDec < RuntimeError
end

