FROM ubuntu:latest

#instalações base
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install postfix dovecot-imapd dovecot-pop3d -y
RUN apt-get install syslog-ng -y

COPY main.cf /etc/postfix
COPY dovecot/10-auth.conf /etc/dovecot/conf.d

RUN useradd -c "matheus" -m matheus
RUN echo "matheus:redes"| chpasswd matheus
RUN useradd -c "tst" -m tst
RUN echo "tst:redes"| chpasswd tst

# CMD ["postfix", "start-fg"]
CMD ["sh", "-c","service syslog-ng start ; service postfix start ; service dovecot start ; tail -F /var/log/mail.log"]