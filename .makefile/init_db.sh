#!/bin/bash

make_db () {
  container=$1
  database=$2;
  filepath=$3;
  counter=1;
  docker-compose exec -T $container mysql --user=zeroastro --password=zeroastro --database=$database < $filepath;
  while [ $? -ne 0 ] && [ $counter -le 60 ]; do
    sleep 5;
    let "counter += 1";
    docker-compose exec -T $container mysql --user=zeroastro --password=zeroastro --database=$database < $filepath;
  done
}

# Run create table
make_db "db_zeroastro" "zeroastro" "sql/zeroastro.sql";
