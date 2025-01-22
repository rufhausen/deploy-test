FROM nginx:1.17-alpine AS nginx_laravel

RUN mkdir -p /var/www/public

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ../../public /var/www/public/

RUN chown -R nginx:nginx /var/www

VOLUME ["/var/www"]