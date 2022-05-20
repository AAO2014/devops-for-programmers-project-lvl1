env-prepare:
	cp .env.example .env

compose:
	make env-prepare
	docker-compose up -d

compose-build:
	docker-compose build

compose-down:
	docker-compose down || true

compose-stop:
	docker-compose stop || true

compose-restart:
	docker-compose restart

setup:
    make env-prepare
	docker run -u 1000 -it -w /root -v `pwd`/app:/root node:14.18.1 npm ci

start:
	docker run -it -w /root -v `pwd`/app:/root -p 8080:8080 node:14.18.1 npm run dev

dev:
	docker-compose up

ci:
    make env-prepare
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app


push:
	docker-compose -f docker-compose.yml push app

