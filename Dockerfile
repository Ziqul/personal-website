FROM nginx:1.21.4

COPY nginx.conf.template /etc/nginx/templates/

WORKDIR /app/

COPY ./ ./
