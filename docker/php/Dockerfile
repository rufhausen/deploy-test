FROM 450370295967.dkr.ecr.us-west-1.amazonaws.com/composer:latest as composer
LABEL stage=intermediate

COPY ./ /app
# RUN composer install --ignore-platform-reqs --no-scripts --no-autoloader --no-ansi --no-interaction
RUN composer install --ignore-platform-reqs --no-interaction
# RUN composer dump-autoload --classmap-authoritative

FROM 450370295967.dkr.ecr.us-west-1.amazonaws.com/laravel-php:latest

COPY --from=composer /app /var/www
RUN chown -R www-data:www-data /var/www && chmod -R 777 /var/www

WORKDIR /var/www
VOLUME ["/var/www"]
