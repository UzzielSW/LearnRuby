# Los nombres de las variables pueden consistir en caracteres alfanuméricos y el carácter de subrayado (_), pero no pueden comenzar con una letra mayúscula.
x = 8
puts "variable: #{x}"


# Constants
# Las variables que comienzan con una letra mayúscula se llaman constantes . 
# El valor de una variable constante no se puede cambiar una vez que se ha asignado. Por ejemplo:

MyNum = 42 

puts "Constant: #{MyNum}"

# Intentar cambiar el valor produce una advertencia 

# Tipos de datos

x = 42 # entero
y = 1.58 # valor de coma flotante 
z = "Hola" # cadena

# valores booleanos(true o false)
verif= true
valores falsey solo (false y nil) los demas son identificados como truthy
# el valor nil significa sin valor
vacio= nil 

# Puede reasignar un valor diferente a una variable en cualquier momento. 
# Para insertar el valor de una variable en una cadena de comillas dobles (una cadena es una secuencia de caracteres, como "Hola"), use el símbolo # y las llaves con el nombre de la variable .

age = 42 

puts 'He is #{age} years old' # comillas simples no inserta el valor 

puts "He is #{age} years old" # solo comillas dobles 
