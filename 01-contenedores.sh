# Contenedor: Entorno aislado , donde existen todas  las dependencias necesarias para ejecutar una aplicación.
# Que es una imagen: Es un archivo que contiene todo lo necesario para ejecutar una aplicación, incluyendo el sistema operativo, las librerías y dependencias necesarias.

# Imagen --> Clase Persona
# Contenedor --> Objeto Persona()
# Las imagenes viven en un repositorio de imágenes, como Docker Hub.
docker container run hello-world

# Listar contenedores
docker container ls -a

# Crear un contenedor que persista en el tiempo y se exponga al puerto 80
docker container run -d -p 83:86 docker/getting-started

# Eliminar un contenedor
docker container rm <ID del contenedor>

# detener un contenedor
docker container stop <ID del contenedor> o el <nombre del contenedor>

# Iniciar un contenedor que ya existe
docker container start <ID del contenedor>

# Eliminar contenedores forzado
docker container rm -fv <ID del contenedor>

# Crear contenedor ubuntu, con nombre MaquinaUbuntu, en segundo plano y con un tiempo de vida de 1000 segundos
docker container run --name MaquinaUbuntu -d ubuntu sleep 1000

# Como ingresar a un contenedor
docker container exec -it <Nombre o ID del contenedor> bash

# salir del contenedor
exit

# Nginx
docker container run -d -p 80:80 nginx

# Como construir una imagen
docker build -t node-api:1.0 .

# Correr una imagen con un contenedor
docker container run --name MyApi -d -p 3005:3000 node-api:1.0

# MySQL
docker container run -d -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=1234 mysql:5.7

# logs
docker logs <ID del contenedor>

# Volumes Bind Volumes / Volumenes Administrados
docker volume ls

# Crear un volumen
docker volume create <nombre del volumen>

# Crear un contenedor con un volumen
docker container run -d -p 80:80 --name webserver -v <nombre del volumen>:/usr/share
docker container run --name MySQL4 -e MYSQL_ROOT_PASSWORD=12345 -v 411_mysqldb:/var/lib/mysql -dp 3307:3309 mysql:8

# 
docker container run --name MySQL5 -e MYSQL_ROOT_PASSWORD=12345 -v /.data:/var/lib/mysql -dp 3410:3406 mysql:8 

# crear una red
docker network create 411_network

# listar redes
docker network ls

# crear un contenedor en una red
docker container run --name box1 -d alpine sleep 3600
docker container run --name box2 -d alpine sleep 3600

# entrar a un contenedor
docker exec -it box1 sh

docker network connect <nombre de network> <nombre de contenedor>

#Login
docker login -u jairo0624 -p <password>

# 1.Se crea la aplicacion
# 2.Se crea el Dockerfile
# 3.Construir la imagen
docker build -t jairo0624/docker-fundamentals:v1.1 .
# 4.Publicar la imagen
docker push jairo0624/docker-fundamentals:v1.1

