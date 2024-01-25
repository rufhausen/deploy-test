# FROM 450370295967.dkr.ecr.us-west-1.amazonaws.com/composer:latest as composer
FROM composer
LABEL stage=intermediate

FROM 450370295967.dkr.ecr.us-west-1.amazonaws.com/php:latest
COPY ./ /var/www

COPY --from=composer /usr/bin/composer /usr/bin/composer
WORKDIR /var/www

RUN composer install --ignore-platform-reqs --no-interaction

COPY --from=composer /app /var/www
RUN chown -R www-data:www-data /var/www && chmod -R 777 /var/www

VOLUME ["/var/www"]
