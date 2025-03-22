# Use an official PHP image
FROM php:8.2-apache

# Enable required PHP extensions
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Set the working directory
WORKDIR /var/www/html

# Copy all files to the container
COPY . /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
