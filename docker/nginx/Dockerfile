FROM nginx:1.17-alpine AS nginx_laravel

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/public && \
    chown -R nginx:nginx /var/www

VOLUME ["/var/www"]