FROM nginx:1.17-alpine AS nginx_laravel

RUN mkdir -p /var/www/public

COPY ./nginx.conf /etc/nginx/conf.d/default.conf