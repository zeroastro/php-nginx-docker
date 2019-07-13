.PHONY: rebuild
rebuild: down build

.PHONY: build
build:
	@docker-compose build

.PHONY: run
run:
	@docker-compose up

.PHONY: run-d
run-d:
	@docker-compose up -d

.PHONY: stop
stop:
	@docker-compose stop

.PHONY: down
down:
	@docker-compose down --remove-orphans

.PHONY: logs
logs:
	@docker-compose logs

.PHONY: status
status:
	@docker-compose ps

.PHONY: shell
shell:
	@docker exec -it php-runner /bin/bash
