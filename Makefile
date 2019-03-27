run:
	docker-compose -f ./stack.yml up -d --build

stop:
	docker-compose -f ./stack.yml down

restart: stop run

bash:
	docker exec -it $$(docker ps |grep 'nextcloud:fpm-alpine' | awk '{print $$1}') sh

