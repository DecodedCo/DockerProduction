#!/bin/bash

read -d '' SUPERCONF <<EOF 
[supervisord]
nodaemon=true
logfile = /var/log/supervisord.log
logfile_maxbytes = 50MB
logfile_backupts = 5
loglevel = debug
pidfile = /tmp/supervisord.pid
user = root

[program:nginx]
command=/usr/sbin/nginx
autostart = true
nodaemon=true

[program:php]
command=/usr/bin/php
autostart = true

[program:php-fpm]
command=/usr/sbin/php-fpm
stdout_events_enabled=true
stderr_events_enabled=true
autostart = true

EOF

touch /etc/supervisord.conf
echo "$SUPERCONF" > /etc/supervisord.conf
#nginx needs to be in daemon off mode
echo "daemon off;" >> /etc/nginx/nginx.conf 
mkdir -p /var/log/supervisor

exit 0

