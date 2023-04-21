.PHONY: ps logs up recreate stop down pull

all: ps

ps:
	docker-compose ps

logs:
	docker-compose logs -f --tail 100

up:
	docker-compose up -d
	sleep 2
	docker-compose ps

recreate:
	docker-compose up -d --build --force-recreate
	sleep 2
	docker-compose ps

stop:
	docker-compose stop
	docker-compose ps

down:
	docker-compose down
	docker-compose ps

pull:
	git pull
