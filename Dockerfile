FROM nginx:1.21.4

COPY nginx/ /etc/nginx/templates/

WORKDIR /app/

COPY ./ ./

CMD sh -c "for f in $(find /etc/nginx/templates -name '*.conf'); do envsubst < $f > /etc/nginx/conf.d/$(basename $f); done" && nginx -g 'daemon off;'
