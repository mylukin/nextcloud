run:
	docker-compose -f ./stack.yml up -d --build

stop:
	docker-compose -f ./stack.yml down

restart: stop run

bash:
	docker exec -u www-data -it $$(docker ps |grep -E 'nextcloud\:[0-9]+\-fpm\-alpine' | awk '{print $$1}') sh

