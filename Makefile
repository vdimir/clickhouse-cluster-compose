
.PHONY: run
run:
	docker compose -f ./chcluster/docker-compose.yml up -d

.PHONY: build
build:
	docker build -t chcluster ./chcluster

.PHONY: stop
stop:
	docker compose -f ./chcluster/docker-compose.yml down

.PHONY: clean
clean:
	rm -rf ./chcluster/_data
