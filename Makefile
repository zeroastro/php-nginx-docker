.PHONY: rebuild
rebuild: clean build

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

.PHONY: clean
down:
	@docker-compose down --remove-orphans --volumes

.PHONY: logs
logs:
	@docker-compose logs

.PHONY: status
status:
	@docker-compose ps

.PHONY: shell
shell:
	@docker-compose exec php-runner /bin/bash
