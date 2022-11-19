FROM 932153253002.dkr.ecr.us-west-2.amazonaws.com/laravel-php:latest

WORKDIR /var/www/html
COPY ./ /var/www/html
RUN chmod -R o+w /var/www/html/storage
RUN chmod -R ug+rwx storage bootstrap/cache
RUN chmod -R 755 /var/www/html/
RUN find /var/www/html/ -type d -exec chmod 775 {} \;
RUN composer install --no-scripts --no-autoloader --no-ansi --no-interaction --working-dir=/var/www/html/
RUN composer dump-autoload --classmap-authoritative