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
