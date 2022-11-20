FROM 932153253002.dkr.ecr.us-west-2.amazonaws.com/composer:latest as composer
LABEL stage=intermediate

COPY ./ /app
RUN composer install --ignore-platform-reqs --no-scripts --no-autoloader --no-ansi --no-interaction
RUN composer dump-autoload --classmap-authoritative

FROM 932153253002.dkr.ecr.us-west-2.amazonaws.com/laravel-php:latest

WORKDIR /var/www
VOLUME ["/var/www"]

COPY --from=composer /app /var/www

RUN chown -R www-data:www-data /var/www
RUN php artisan cache:clear
RUN php artisan config:clear

# RUN chmod -R o+w /var/www/storage
# RUN chmod -R ug+rwx storage
RUN chmod 777 -R /var/www/storage
RUN chmod 777 -R /var/www/storage/framework/sessions
# RUN find /var/www/ -type d -exec chmod 775 {} \;
