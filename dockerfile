FROM php:8.2-fpm-alpine

# Installer les dépendances nécessaires
RUN apk add --no-cache \
    git \
    curl \
    libpq \
    postgresql-dev \
    && docker-php-ext-install pdo_pgsql

# Installer Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Définir le répertoire de travail
WORKDIR /var/www/html

# Copier le projet dans le conteneur
COPY . /var/www/html

# Exposer le port pour PHP-FPM
EXPOSE 9000
