FROM php:8.3-fpm-alpine

# Install system dependencies
RUN apk add --no-cache \
    git \
    curl \
    libpng-dev \
    libxml2-dev \
    zip \
    unzip

# Install PHP extensions
RUN docker-php-ext-install \
    pdo \
    pdo_mysql 

# Set working directory
WORKDIR /var/www/html

# Create www-data user if it doesn't exist and set permissions
RUN addgroup -g 1000 -S www-data || true
RUN adduser -u 1000 -S www-data -G www-data || true

# Copy application files
# .dockerignore created so unwanted files aren't copied
COPY src .

# Set proper permissions for the working directory
RUN chown -R www-data:www-data /var/www/html

# Switch to www-data user
USER www-data