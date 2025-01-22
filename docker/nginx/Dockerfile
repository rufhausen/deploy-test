FROM nginx:1.17-alpine AS nginx_laravel

# Install curl for health checks
RUN apk add --no-cache curl

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
