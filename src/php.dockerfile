# Use the official PHP image
FROM php:fpm

# Set the working directory inside the container
WORKDIR /var/www/html

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

COPY . .

# Set permissions for Laravel's storage and bootstrap/cache directories
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Expose the PHP-FPM port
EXPOSE 9000
