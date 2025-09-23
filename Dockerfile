FROM php:8.4-apache

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql

COPY ./App /var/www/html/

EXPOSE 80