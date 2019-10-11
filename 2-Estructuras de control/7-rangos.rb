=begin 
	los rangos representan una secuencia de (numeros o letras)
	los operadores de rangos son:
	 (..) que es inclusivo
	 (...) que es exclusivo de valor mayor indicado
=end

# metodo to_a convierte un rango en un arreglo
arreglo1 = (1..7).to_a
print arreglo1
puts ""
arreglo2 = ('a'...'g').to_a
print arreglo2


# tambien puedes utilizar los rangos en las declaracion case

case arreglo1[0]
when 1..7
	puts "rango del arreglo 1"
end

