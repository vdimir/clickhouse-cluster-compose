
.PHONY: up
up:
	docker compose -f ./chcluster/docker-compose.yml up -d

.PHONY: down
down:
	docker compose -f ./chcluster/docker-compose.yml down

.PHONY: stop
stop:
	docker compose -f ./chcluster/docker-compose.yml stop

.PHONY: build
build:
	docker build -t chcluster ./chcluster

.PHONY: clean
clean: stop
	rm -rf ./chcluster/_data
	rm -rf ./chcluster/_logs
