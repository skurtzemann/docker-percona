#!/bin/bash

## Create mysql databases on first boot
if [ ! -d /var/lib/mysql/mysql ]; then
	mysql_install_db > /dev/null 2>&1
fi

## Start supervisor process
/usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf