# Our base image, Debian 11
FROM debian:11

# Update and donwload NGINX and OPENSSL
RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y nginx openssl

# Good practice to clean cache and reduce image size
RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/*

# Create a directory for runtime for NGINX
RUN mkdir -p /run/nginx

# Generate a Self-Signed SSL Certificate
# In directories /etc/ssl/certs and /etc/ssl/private
RUN openssl req -x509 \
	-newkey rsa:4096 \
	-sha256 \
	-days 365 \
	-nodes \
	-keyout /etc/ssl/private/dpetrukh.key \
	-out /etc/ssl/certs/dpetrukh.crt \
	--subj "/C=PT/ST=Lisboa/L=Lisboa/O=42/OU=student/CN=dpetrukh"

# Copy my configuration to the default.conf of nginx configurations
COPY conf/default.conf /etc/nginx/conf.d/default.conf

# TEST FILE JUST FOR TESTING
RUN echo "<h1>TEST: NGINX is tunning securely on Debain!</h1>" > /var/www/html/index.html

EXPOSE ${NGINX_PORT}

# RUN the NGINX
CMD ["nginx", "-g", "daemon off;"]