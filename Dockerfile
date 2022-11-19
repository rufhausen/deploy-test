FROM 932153253002.dkr.ecr.us-west-2.amazonaws.com/laravel-php:latest

COPY ./ /var/www/html

RUN chmod -R 755 /var/www/html/
RUN find /var/www/html/ -type d -exec chmod 775 {} \;
RUN composer install --no-scripts --no-autoloader --no-ansi --no-interaction --working-dir=/var/www/html/
