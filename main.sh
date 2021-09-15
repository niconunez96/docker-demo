# !/usr/bin

cowsay -f tux "Nicolas Nunez, Legajo 45027"
sleep 4

cowsay "Vamos a levantar algunos contenedores de alpine..."
for i in 1 2 3;
do
docker run -d -it alpine sh
done;

cowsay "Shellearse a un container es una tarea muy repetitiva"
sleep 4
cowthink -y "Me pregunto como podria automatizar eso"

sleep 4
cowsay -f luke-koala "econtainer is for you...(seleccione un contenedor con 'enter')"
sleep 6
cowsay -f vader-koala "pss Para salir del contenedor tenes que apretar ctrl+d" 
sleep 6 

econtainer || true

sleep 4
cowsay "Ahora paremos todos los contenedores que creamos"
sleep 4
cowsay -f luke-koala "scontainers is for you!"
sleep 4
cowsay -f vader-koala "pss para seleccionar varios contenedores usa 'tab'\
 y una vez seleccionado todos los containers apreta enter"
sleep 6

scontainers | cowsay || true

cowsay -f bunny "That's all folks!"
