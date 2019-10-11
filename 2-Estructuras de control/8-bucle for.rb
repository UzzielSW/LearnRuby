# los rangos son usados en el bucle for

for i in (1..7)
	print "#{i}  "
end

# sentencia break es utilizada para detener los bucles
# sentencia next es utilizar para saltar una repeticion
# sentencia redo causa que la iteracion del bucle actual sea repetida
# sentencia retry produce que el bucle completa comience nuevamente desde el inicio

# bucle loop do permite que el codigo se ejecute hasta que alcanse un break
# en otros lenguajes se le conoce como do/while

puts ""
loop do
	puts "1.active"
	puts "2.exit"
	opc = gets.to_i
	break if opc == 2
end