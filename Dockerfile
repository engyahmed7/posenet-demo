# Use the official PHP 8.1 image with Apache
FROM php:8.1-apache

# Set working directory inside the container
WORKDIR /var/www/html

# Install required PHP extensions, including PostgreSQL
RUN apt-get update && apt-get install -y unzip libpq-dev && \
    docker-php-ext-install pdo pdo_pgsql pgsql

# Copy Laravel files into the container
COPY . .

# Install Composer dependencies
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    composer install --no-dev --optimize-autoloader

# Set permissions for storage and bootstrap/cache
RUN chmod -R 777 storage bootstrap/cache

# Expose port 80 for Apache
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
