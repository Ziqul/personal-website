for f in $(find /etc/nginx/templates -type f); do
	envsubst < $f > "/etc/nginx/conf.d/$(basename $f)"
done

nginx -g 'daemon off;'
