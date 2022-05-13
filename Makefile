setup:
	docker run -u 1000 -it -w /root -v `pwd`/app:/root node:14.18.1 npm ci

start:
	docker run -it -w /root -v `pwd`/app:/root -p 8080:8080 node:14.18.1 npm run dev

dev:
	docker-compose up

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

