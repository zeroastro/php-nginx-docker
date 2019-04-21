# PHP + NGINX Local Docker Setup

## Versions:
- NGINX ^1
- PHP ^7.2

## Getting Started
To get started, just:
- Checkout the repository
- Run `make run`
- Navigate to `localhost:8000`

## Makefile
The Makefile provides few convenient and useful commands:
- `make rebuild` : Rebuild the containers
- `make run` : Run the containers in background
- `make stop` : Stop the execution of the containers
- `make down` : Down all the containers
- `make logs` : Listen logs on all the containers
- `make status` : Show the status of the containers
- `make shell` : Run an interactive shell with the php container

## Customization
- NGINX web-server can be customized in `build/nginx`
- The php runner PHP-FPM can be customized in `build/php-fpm`
