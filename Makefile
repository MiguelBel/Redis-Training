.PHONY: redis-cli

start-containers:
	docker run -e MYSQL_ALLOW_EMPTY_PASSWORD=true -d --name rdbms mysql
	docker run -d -v $(pwd):/opt --name redis redis

stop-containers:
	-docker stop rdbms
	-docker rm rdbms
	-docker stop redis
	-docker rm redis

redis-cli:
	docker exec -it redis redis-cli

shell-redis:
	docker exec -it redis bash

rdbms-cli:
	docker exec -it rdbms mysql