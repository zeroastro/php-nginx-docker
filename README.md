# PHP + MYSQL + NGINX Docker Setup

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
- `make clean` : Remove all images, networks and volumes
- `make status` : Show the status of the containers
- `make shell` : Run an interactive shell with the php container
- `make init_db` : Create an empty database
- `make apply_fixtures` : Populate table with dummy data



## Customization
You can customize the nginx web-server configuration via the `site.conf` file and the php container via the `Dockerfile`.
