FROM nginx:1.17-alpine AS nginx_laravel

# Install curl for health checks
RUN apk add --no-cache curl

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/public && \
    chown -R nginx:nginx /var/www && \
    chmod -R 755 /var/www

VOLUME ["/var/www"]