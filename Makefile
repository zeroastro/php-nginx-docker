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

clean:
	bash ./.makefile/clean.sh

init_db:
	bash ./.makefile/init_db.sh

apply_fixtures:
	cat sql/zeroastro_fixtures.sql | docker-compose exec -T  db_zeroastro mysql -u zeroastro --password=zeroastro zeroastro