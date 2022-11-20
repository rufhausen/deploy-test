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
RUN chmod -R ug+rwx var/www/storage \
    /var/wwwbootstrap/cache \
    /var/www/storage/logs \
    /var/www/storage/framework/sessions \
    /var/www/storage/framework/cache \
    /var/www/storage/framework/cache/data \
    /var/www/storage/framework/logs

RUN chmod -R 777 var/www/storage \
    /var/wwwbootstrap/cache \
    /var/www/storage/logs \
    /var/www/storage/framework/sessions \
    /var/www/storage/framework/cache \
    /var/www/storage/framework/cache/data \
    /var/www/storage/framework/logs

RUN find /var/www/ -type d -exec chmod 777 {} \;
