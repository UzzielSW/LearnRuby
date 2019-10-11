# Ruby Linux
instalacion de ruby en linux

Requisitos:
  + Sistema actualizado
    + `sudo apt-get update`
    + `sudo apt-get upgrade`
  + Curl
    + `sudo apt-get install curl`

instalar e configurar el rvm (ruby version manager)
  + `curl -L get.rvm.io | bash -s stable`
  + `source ~/.profile`
  + `source ~/.rvm/scripts/rvm`
  + `rvm autolibs enable`
  + `rvm requirements`
  + `rvm install ruby irb`

verificar
  + `ruby -v`
  + `rvm use ruby --install --default`
  + `rvm rubygems current`
  + `gem install rails`

instalar el motor de base de datos 
+ `sudo apt-get install mysql-server mysql-client libmysql.dev`
  verificar
    + `mysql -u root -p`