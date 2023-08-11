build:
		mkdir -p /home/azabir/data/db /home/azabir/data/wp
		docker-compose -f srcs/docker-compose.yml build

up: build
		docker-compose -f srcs/docker-compose.yml up -d

down:
		docker-compose -f srcs/docker-compose.yml down -v

clean: down
		rm -rf /home/azabir/data/db /home/azabir/data/wp
		docker-compose -f srcs/docker-compose.yml down --rmi all
		docker system prune -af --volumes
re: clean up