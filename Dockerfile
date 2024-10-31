#Arquivo primeiro container docker
#imagem de origem para uso
FROM ubuntu:latest



RUN apt update -y
RUN apt install bind9 dnsutils -y

CMD ["/usr/sbin/named","-g","-c","/etc/bind/named.conf","-u","bind"]





#docker build -t ubuntu-bind .
#docker run -d --name bind ubuntu-bind
#docker exec -it bind bash

#copiar arquivo do arquivo para fora
#docker container cp bind:/etc/bind/named.conf.local . 
#docker cp 95:/root/test.txt .

#copiar arquivo para dentro do container
#docker cp file.txt 95:/root/ 