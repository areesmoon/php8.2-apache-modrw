FROM php:8.2-apache

# Aktifkan mod_rewrite
RUN a2enmod rewrite

# Install ekstensi mysqli
RUN docker-php-ext-install mysqli

# Bolehkan .htaccess override
RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf