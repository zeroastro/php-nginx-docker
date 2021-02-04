#!/bin/sh

if [[ ! -f /var/first-run-setup-done ]];
then
    echo "Running first run setup..."
    if [ "$APP_ENV" = 'development' ];
    then
        mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
    fi

    echo "Removing this file will cause a new first run setup" >> /var/first-run-setup-done
    echo "First run setup done."
fi

echo "Running the application..."
php-fpm

