#make the session directory for php
mkdir -p /var/lib/php/session

#set the permissions for the directory so php can write to it
chown -R amlwwalker:amlwwalker /var/lib/php/session
chmod -R 755 /var/lib/php/session
#set php to accept short form code

sed -i 's/short_open_tag = Off/short_open_tag = On/g' /etc/php.ini
#set php-fpm to NOT be daemonized
sed -i 's/;daemonize = yes/daemonize = no/g' /etc/php-fpm.conf
#set the php-fpm user to amlwwalker
sed -i 's/user = apache/user = amlwwalker/g' /etc/php-fpm.d/www.conf
sed -i 's/group = apache/group = amlwwalker/g' /etc/php-fpm.d/www.conf 

exit 0

