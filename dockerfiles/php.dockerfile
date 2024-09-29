# Use the official PHP image
FROM php:fpm

# Set the working directory inside the container
WORKDIR /var/www/html

COPY src .

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html