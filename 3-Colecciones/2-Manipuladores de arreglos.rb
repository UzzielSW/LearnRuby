  print "\nCombinando arreglos:\n"
  arr1 = [1,2,3]
  arr2 = [4,5]

  union = arr1 + arr2
  print "\nUnion: #{union}"

  arr1 = [1,2,3,4,5]
  arr2 = [2,4,5]

  resta = arr1 - arr2
  print "\nResta: #{resta}"

  print "\nMultiplicacion(arr2*3): #{arr2*3}"


  # Operaciones booleanas
  puts "\n\nOperaciones booleanas:"
  arr1 = [1,2,3,4,5]
  arr2 = [3,1,5]

  print "\nInterseccion: #{arr1 & arr2}"
  print "\nSin dublicados: #{arr1 | arr2}"
  print "\nInvertir(arr2): #{arr2.reverse}"
  print "\nInvertir(arr1): #{arr1.reverse!}"

=begin
  Metodos de array
  los metodos con nombres sin signo(!) retornan un arreglo aplicando los metodos y
  aquellos metodos con el signo(!) aplican la funcion en el mismo arreglo.

  - arr1.length y arr1.size (numero de elementos)
  - arr1.sort (ordena el array)
  - arr1.uniq (eliminar duplicados)
  - arr1.freeze (evita ser modificado)
  - arr1.include? (retorna true si el elemento se encuentra y false de lo ocntrario)
  - arr1.min (retorna el elemento con menor valor)
  - arr1.max (retorna el elemento con mayor valor)
  hay muchos mas metodos...
=end
