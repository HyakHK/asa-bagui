#Arquivo primeiro container docker
#imagem de origem para uso
FROM ubuntu:latest



RUN apt update -y
RUN apt install bind9 dnsutils apache2 -y

COPY named.conf.local /etc/bind
COPY db.asa.br /etc/bind
COPY index.html /var/www/html
EXPOSE 80/tcp
EXPOSE 80/udp


CMD ["/usr/sbin/named","-g","-c","/etc/bind/named.conf","-u","bind"]
#ou
#ENTRYPOINT [ "executable" ]






#docker build -t ubuntu-bind .
#docker run -d --name bind ubuntu-bind
#docker exec -it bind bash



#copiar arquivo do arquivo para fora
#docker container cp bind:/etc/bind/named.conf.local . 
#docker cp 95:/root/test.txt .

#copiar arquivo para dentro do container
#docker cp file.txt 95:/root/ docker exec -it bind bash


#comandos a colocar na lista

