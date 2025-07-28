FROM debian:bullseye

# Atualizar o nosso sistema debian
RUN apt-get update && apt-get install -y mariadb-server

# TEMPORARIO
ENV SSQL_DATABASE=wordpress
ENV SSQL_USER=dpetrukh
ENV SSQL_SUN=helloworld
ENV SSQL_ROOT_SUN=roothelloblyat
# TEMPORARIO

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/script.sh /script.sh
RUN chmod +x /script.sh

# Define o entrypoint como o script customizado
CMD ["/script.sh"]

