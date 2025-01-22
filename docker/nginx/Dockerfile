FROM nginx:1.17-alpine AS nginx_laravel

# RUN apk update; \
#     apk upgrade;

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

VOLUME ["/var/www"]