SECRET_PATH = ./secrets
DATA_PATH = /home/dpetrukh/data
DC = docker compose -f ./srcs/docker-compose.yml

all : new

new :
	mkdir -p $(DATA_PATH)
	mkdir -p $(DATA_PATH)/wordpress
	mkdir -p $(DATA_PATH)/mariadb
	mkdir -p $(SECRET_PATH)
	touch $(SECRET_PATH)/dbName.txt \
	$(SECRET_PATH)/dbUser.txt \
	$(SECRET_PATH)/dbPassword.txt \
	$(SECRET_PATH)/dbRootPassword.txt \
	$(SECRET_PATH)/wpAdminUser.txt \
	$(SECRET_PATH)/wpAdminPassword.txt \
	$(SECRET_PATH)/wpAdminEmail.txt \
	$(SECRET_PATH)/wpUser.txt \
	$(SECRET_PATH)/wpUserPassword.txt

up :
	$(DC) up -d

down :
	$(DC) down

start :
	$(DC) start

stop :
	$(DC) stop

status :
	$(DC) ps -a

logs:
	$(DC) logs

clean:
	$(DC) down --volumes --remove-orphans
# 	docker rmi nginx:42 wordpress:42 mariadb:42 redis:42 adminer:42
	docker rmi $$(docker images -q) || true

fclean: clean
	docker container prune -f
	docker image prune -f
	docker volume prune -f
	sudo rm -rf $(DATA_PATH)
	sudo rm -rf $(SECRET_PATH)

re: fclean new