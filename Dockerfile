FROM nginx:1.21.4

COPY nginx/ /etc/nginx/

WORKDIR /app/

COPY ./ ./
