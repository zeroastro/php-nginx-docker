# PHP + NGINX Bootstrap Docker Setup

## Versions:
- Webserver nginx 1.19
- PHP ^8.0 (Buster)

## Getting Started
- Checkout the repository
- Run `cp .env.dev .env`
- Run `make run`
- Navigate to `localhost:8000`

## Makefile
The Makefile provides few convenient and useful commands:
- `make rebuild` : Clean and Rebuild the containers
- `make build` : Build the containers
- `make run` : Run the containers in listening mode
- `make run-d` : Run the containers in background
- `make stop` : Stop the execution of the containers
- `make clean` : Down all the containers, remove orphans and volumes
- `make logs` : Listen logs on all the containers
- `make status` : Show the status of the containers
- `make shell` : Run an interactive shell with the php container
