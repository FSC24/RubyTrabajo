# Usa la imagen oficial de Ruby
FROM ruby:3.1-slim

# Instala la gema webrick
RUN gem install webrick

# Copia el archivo Ruby al contenedor
COPY index.rb /app/index.rb

# Establece el directorio de trabajo
WORKDIR /app

# Expone el puerto 8000 para acceso externo
EXPOSE 8000

# Ejecuta el script al iniciar el contenedor
CMD ["ruby", "index.rb"]