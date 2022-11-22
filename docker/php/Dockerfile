FROM 932153253002.dkr.ecr.us-west-2.amazonaws.com/composer:latest as composer
LABEL stage=intermediate

COPY ./ /app
RUN composer install --ignore-platform-reqs --no-scripts --no-autoloader --no-ansi --no-interaction
RUN composer dump-autoload --classmap-authoritative

FROM 932153253002.dkr.ecr.us-west-2.amazonaws.com/laravel-php:latest

WORKDIR /var/www
VOLUME ["/var/www"]

COPY --from=composer /app /var/www

# RUN chmod -R o+w /var/www/storage
# RUN chmod -R ug+rwx storage
RUN chown -R www-data /var/www/bootstrap \
    && chown -R www-data /var/www/storage
RUN chmod -R 777 /var/www/storage/ \
    && chmod -R 777 /var/www/bootstrap/cache
RUN chmod -R 777 /var/www/storage/framework/sessions \
    && chmod -R 777 /var/www/storage/framework/sessions
RUN chmod -R 777 /var/www/storage/framework/cache \
    && chmod -R 777 /var/www/storage/framework/cache
RUN chmod -R 777 /var/www/storage/framework/views \
    && chmod -R 777 /var/www/storage/framework/views
RUN chmod -R 777 /var/www/storage/logs \
    && chmod -R 777 /var/www/storage/logs
