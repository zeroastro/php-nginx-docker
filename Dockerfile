FROM php:fpm

RUN apt-get update && \
    apt-get install -y ca-certificates apt-transport-https wget curl unzip && \
    apt-get clean && \
    apt-get autoclean && \
    docker-php-ext-install pdo_mysql mysqli && \
    rm -rf /var/lib/apt/lists/*

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

WORKDIR /var/www