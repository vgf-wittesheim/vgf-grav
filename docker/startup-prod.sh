#!/usr/bin/env bash
set -e

chown -R www-data:www-data $GRAV_PAGE
find $GRAV_PAGE -type f | xargs chmod 664
find $GRAV_PAGE -type d | xargs chmod 775
find $GRAV_PAGE -type d | xargs chmod +
umask 0002

MY_IP=$(hostname -i)
PORT=8080
echo "MY_IP:  $MY_IP", expose port $PORT

## start php fpm
/usr/sbin/php-fpm7.0 -F &

/usr/sbin/nginx -g "daemon off;"

