FROM nginx:1.21.4

COPY nginx/ /etc/nginx/conf.d/

WORKDIR /app/

COPY ./ ./

CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/main.conf.template > /etc/nginx/conf.d/main.conf" && nginx -g 'daemon off;'
