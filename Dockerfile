# FROM php:7.4-fpm-alpine
#Update to FROM php:8.0-apache
FROM php:8.0-fpm-alpine
# Install php Extensions

RUN docker-php-ext-install pdo pdo_mysql

# CMD bash -c "composer install && php artisan serve --host 0.0.0.0"