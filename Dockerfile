FROM nginx:1.21.4

COPY nginx/ /etc/nginx/conf.d/

WORKDIR /app/

COPY ./ ./

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/main.conf && nginx -g 'daemon off;'
