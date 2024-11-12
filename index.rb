# index.rb
require 'webrick'

# Configuración del servidor
server = WEBrick::HTTPServer.new(Port: 8000)

# Maneja las solicitudes GET a la raíz del servidor
server.mount_proc '/' do |req, res|
  res.body = "Hi, my name is Christian this is in Ruby :3!"
  res['Content-Type'] = 'text/html'
end

# Iniciar el servidor
trap 'INT' do server.shutdown end
server.start