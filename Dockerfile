FROM nginx:1.21.4

COPY nginx/ /etc/nginx/templates/

WORKDIR /app/

COPY ./ ./

CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/templates/main.conf > /etc/nginx/conf.d/main.conf" && nginx -g 'daemon off;'
