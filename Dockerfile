#Arquivo primeiro container docker
#imagem de origem para uso
FROM ubuntu:latest



RUN apt update -y
RUN apt install bind9 dnsutils -y

CMD ["/usr/sbin/named","-g","-c","/etc/bind/named.conf","-u","bind"]







#docker build -t ubuntu-bind .
#docker run -d --name bind ubuntu-bind
#docker exec -it bind bash