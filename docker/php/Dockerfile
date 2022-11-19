FROM 932153253002.dkr.ecr.us-west-2.amazonaws.com/composer:latest as composer
LABEL stage=intermediate

COPY ./ /app
RUN composer install --ignore-platform-reqs --no-scripts --no-autoloader --no-ansi --no-interaction
RUN composer dump-autoload --classmap-authoritative

FROM 932153253002.dkr.ecr.us-west-2.amazonaws.com/laravel-php:latest

WORKDIR /var/www
VOLUME ["/var/www"]

COPY --from=composer /app /var/www

RUN chmod -R o+w /var/www/storage
RUN chmod -R ug+rwx storage bootstrap/cache storage/logs
RUN chmod -R 755 /var/www/
RUN find /var/www/html/ -type d -exec chmod 775 {} \;
