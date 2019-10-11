=begin
local(Son accesibles solo en el lugar que fueron definidas)
global(son accedidas de cualquier parte del programa)
son declaradas empezando con el signo ($)
asi como en todos los lenguajes no se recomienda usar variables globales
=end

$global = 'junior'

def saludar
  print"\n hello #{$global}"
end

saludar