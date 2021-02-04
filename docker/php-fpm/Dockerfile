FROM php:8.0-fpm-buster

RUN apt-get update && \
    apt-get install -y curl unzip bash && \
    docker-php-ext-install pdo_mysql mysqli

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

COPY ./usr/ /usr/

WORKDIR /var/www

EXPOSE 9000

CMD ["/usr/bin/run-app.sh"]
