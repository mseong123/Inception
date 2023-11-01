all:
	sudo mkdir -p /home/melee/data/wp
	sudo mkdir -p /home/melee/data/db
	@docker-compose -f ./srcs/docker-compose.yml up -d --build

restart:
	@docker-compose -f ./srcs/docker-compose.yml stop
	@docker-compose -f ./srcs/docker-compose.yml start

down:
	@docker-compose -f ./srcs/docker-compose.yml down

clean:
	-@docker stop $$(docker ps -qa)
	-@docker rm $$(docker ps -qa)
	-@docker rmi -f $$(docker images -qa);
	-@docker volume rm $$(docker volume ls -q)
	-@docker network rm $$(docker network ls -q) 2>/dev/null
	sudo rm -rf /home/melee/data/wp
	sudo rm -rf /home/melee/data/db
	
.PHONY: all restart down clean
