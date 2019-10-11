# un arreglo es esencialmente una lista de elementos numerados.
amigos = ['bryan','diego','eliel','natalio']

=begin
 Insertar elementos

- operador << (añade el valor al final de la lista)
- metodos push(value) (añade el valor al final de la lista)
- insert(position,value) (añade el elemento en la posicion indicada)
=end

amigos << 'Julio'
amigos.push('carlos')
amigos.insert(2,'jafet')
print amigos
puts

=begin
  eliminar elementos

- metodo pop (elimina el ultimo elemento)
- metodo delete_at(pos) (elimina el elemento en la posicion indicada)
=end

amigos.pop
amigos.delete_at(0)
print amigos
puts

# rangos de arreglos
print amigos[1..3]
puts

# creando un vector de 3 elementos
items = Array.new(3)

# creando la matriz 3x3
for i in (0...items.length)
  items[i] =  Array.new(3)
end

# asignando valores a la matriz
for i in (0...items.length)
  for k in (0...items[i].length)
    items[i][k] = 1
  end
end

puts "\n matriz: \n"

for i in (0...items.length)
  for k in (0...items[i].length)
    print " #{items[i][k]}"
  end
  puts ""
end

