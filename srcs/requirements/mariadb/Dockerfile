FROM debian:buster

# Atualizar o nosso sistema debian
RUN apt-get update && apt-get install -y mariadb-server

# TEMPORARIO
ENV db1_name=wordpress
ENV db1_user=dpetrukh
ENV db1_pwd=helloworld
# TEMPORARIO

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/script.sh /
RUN chmod +x /script.sh

# Define o entrypoint como o script customizado
CMD ["/script.sh"]

