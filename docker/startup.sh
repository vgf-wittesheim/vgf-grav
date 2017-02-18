#!/usr/bin/env bash
$STARTUPDIR/set_user_permission.sh

MY_IP=$(hostname -i)
PORT=8080
echo "MY_IP:  $MY_IP", expose port $PORT

php -S "$MY_IP:$PORT" system/router.php
