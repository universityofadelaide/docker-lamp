#!/bin/bash

echo "=> Installing MySQL ..."
mysql_install_db > /dev/null 2>&1
echo "=> Done!"
/usr/local/bin/create_mysql_user.sh

exec supervisord -n
