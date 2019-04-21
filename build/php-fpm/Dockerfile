FROM php:7.3-fpm-alpine3.9

RUN apk update && \
    apk add --no-cache ca-certificates curl unzip bash && \
    docker-php-ext-install pdo_mysql mysqli

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

WORKDIR /var/www
