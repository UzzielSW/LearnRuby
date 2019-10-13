# Covertir script ruby a ejecutable .exe

## Requerimientos
Para crear nuestro ejecutable, vamos a utilizar la gema OCRA.

   `gem install ocra`

## Implementación

En nuestro ejemplo, vamos a crear un ejecutable del siguiente script. El nombre de archivo del script es `text-creator.rb` y contiene el siguiente código (solo solicita al usuario el nombre de un nuevo archivo y el contenido):

```ruby
# Declare start wizard method
def start_wizard
	prompt = "> "
	puts "Hi welcome to Text File Creator 2000"
	puts prompt + "To get started, give a name to your file (without extension)"
	filename = $stdin.gets.chomp

	puts prompt + "Awesome, now provide the content of the file !"
	content = $stdin.gets.chomp

	puts """
	Alright, so your filename will be #{filename}.
	And the content will be #{content}.  Do you want to continue (Yes[y]/No[n])?
	"""
	
	# Confirm the creation of the file
	response = $stdin.gets.chomp

	case response
		# If confirm, create the file
		when 'Y', 'y', 'j', 'J', 'yes', 'Yes'
			out_file = File.new("#{filename}.txt", "w")
			out_file.puts(content)
			out_file.close
			
			puts "Your file has been succesfully created, come back soon !"
		# If not, ask if he wants to continue or just exit
		when 'No','N','no'
			puts prompt + "Oh :(, do you want to start again (Yes[y]/No[n])?"
			
			response = $stdin.gets.chomp

			case response
				when 'Y', 'y', 'j', 'J', 'yes', 'Yes'
					start_wizard()
				when 'No','N','no'
					exit
			end
	end
end

# Start execution 
begin
	start_wizard()
# Write a log in case of error
rescue Exception => e
	File.open("except.log") do |f|
		f.puts e.inspect
		f.puts e.backtrace
	end
end
```

Como puedes ver, es una sencilla aplicación de consola Ruby. Ahora, para crear el archivo ejecutable, navegue con la consola (cmd.exe) a la carpeta donde se encuentra el script de ruby ​​(en este caso, Desktop \ Ruby):

`cd C:\Users\sdkca\Desktop\ruby`

Ahora, proceda con el proceso usando el siguiente comando:

`ocra file-creator.rb`

Ese es el comando más simple para crear un ejecutable de su script, por lo que debería ser suficiente para crear el ejecutable en la carpeta donde se encuentra el script.

Sin embargo, hay un comportamiento interesante que probablemente puedas enfrentar mientras envuelves tu script. OCRA ejecuta el script inmediatamente para verificar las dependencias (.DLL y otros archivos) para hacer que su script sea lo más independiente posible y, obviamente, si su script requiere interacción con el usuario (una solicitud o un valor de ingreso requerido) no querrá que OCRA ejecuta su script por diferentes razones. Para evitar este comportamiento, debe proporcionar un parámetro para hacer que OCRA ignore la ejecución del script:

`ocra text-creator.rb --no-dep-run`

Consejos y sugerencias
* Los DLL se detectan automáticamente, pero solo se incluyen los que se encuentran en su instalación de Ruby.

* .rb Los archivos se convertirán en aplicaciones de consola. `.rbw` los archivos se convertirán en una aplicación de ventana (sin que aparezca una ventana de consola). Alternativamente, use las opciones `--console` o `--windows`.

* Puede cambiar el ícono de su ejecutable agregando el parámetro del ícono (con la ruta del archivo como valor) al comando `ocra script.rb --icon=c:\path-to\icon.ico`.