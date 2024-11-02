FROM ubuntu:latest
RUN apt update 
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN apt install bind9 dnsutils -y
RUN apt clean 
EXPOSE 80
#CMD [“apache2ctl”, “-D”, “FOREGROUND”]

CMD ["/usr/sbin/named","-g","-c","/etc/bind/named.conf","-u","bind"]

