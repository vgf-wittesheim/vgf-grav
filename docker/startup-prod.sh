#!/usr/bin/env bash
set -e

chown -R www-data:www-data $GRAV_PAGE
find $GRAV_PAGE -type f -exec chmod 666 {} +
find $GRAV_PAGE -type d -exec xargs chmod 777 {} +
find $GRAV_PAGE -type d -exec xargs chmod + {} +
umask 0002

MY_IP=$(hostname -i)
PORT=8080
echo "MY_IP:  $MY_IP", expose port $PORT

## start php fpm
/usr/sbin/php-fpm7.3 -F &

/usr/sbin/nginx -g "daemon off;"

