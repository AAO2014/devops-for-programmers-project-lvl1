[![Actions Status1](https://github.com/AAO2014/devops-for-programmers-project-lvl1/workflows/hexlet-check/badge.svg)](https://github.com/AAO2014/devops-for-programmers-project-lvl1/actions)
[![Actions Status2](https://github.com/AAO2014/devops-for-programmers-project-lvl1/workflows/push/badge.svg)](https://github.com/AAO2014/devops-for-programmers-project-lvl1/actions)
## Dockerized JS Fastify Blog

This is a pet project where the [JS Fastify Blog](https://github.com/hexlet-components/js-fastify-blog) app was dockerized to explore DevOps tools and basic concepts (Docker, Docker Compose, GitHub CI).
The image is available at [DockerHub](https://hub.docker.com/repository/docker/solxun/devops-for-programmers-project-lvl1).

Guidance for this project, as well as JS Fasitfy Blog, were provided by Hexlet, a self-education platform. [Read more about Hexlet (in Russian)](https://ru.hexlet.io/pages/about?utm_source=github&utm_medium=link&utm_campaign=nodejs-package).


### Requirements

* Docker
* docker-compose

### Usage

Run `docker pull solxun/devops-for-programmers-project-lvl1` to pull the image. When developing locally, use `make` commands:

`make setup` getting up requirements for the app

`make compose` starts the app at https://localhost

`make start` starts the app at https://localhost without docker-compose

`make compose-build` builds the app

`make compose-down` stops and removes containers, networks, volumes, and images

`make compose-stop` stops containers without removing

`make compose-restart` restarts the app

`make ci` runs tests

`make push` pushes the latest version to DockerHub

`make env-prepare` copy .env.example to .env


### Database settings

For database connection you need to set up environment variables in a file *.env*:

```dotenv
DATABASE_NAME=postgres
DATABASE_USERNAME=postgres
DATABASE_PASSWORD=postgres
DATABASE_PORT=5432
DATABASE_HOST=localhost
```

