.PHONY: rebuild
rebuild:
	@docker-compose down --remove-orphans
	@docker-compose build

.PHONY: run
run:
	@docker-compose up -d

.PHONY: stop
stop:
	@docker-compose stop

.PHONY: status
status:
	@docker-compose ps

.PHONY: shell
shell:
	@docker exec -it php-runner /bin/bash
