for f in $(find /etc/nginx/templates); do
	envsubst < $f > "/etc/nginx/conf.d/$(basename $f)"
done

nginx -g 'daemon off;'
