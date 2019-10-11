# para obtener la entrada del usuario usamos el metodo gets lo cual retorna de lo que el usuario escribio en una string.

# nombre = gets
# puts nombre

# gets obtiene una linea de texto incluyendo el salto de linea al final, utilizar el metodo gets.chomp para no incluir el salto de linea

print "ingrese un nombre: "
nombre = gets.chomp
puts nombre

# para obtener la entrada para enteros utilizar el metodo gets.to_i

print "ingrese un entero: "
entero = gets.to_i
puts entero