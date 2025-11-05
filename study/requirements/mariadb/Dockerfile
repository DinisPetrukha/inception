FROM debian:11

RUN apt update && \
	apt upgrade && \
	 apt install -y mariadb-server

# Clean up cache
RUN apt-get clean && \
	rm -fr /var/lib/apt/lists/*

# Copy paste our MariaDB config
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

# Runtime MariaDB directory
RUN mkdir -p /run/mysql

# Copy init script to system executable location
COPY tools/init.sh /usr/local/bin/init.sh

RUN chmod +x /usr/local/bin/init.sh

# Set permissions for mysql user
RUN chown -R mysql:mysql /etc/mysql /var/lib/mysql /run/mysqld \
	&& chmod 755 /run/mysqld

USER mysql

# Set entrypoint to our script
CMD ["init.sh"]