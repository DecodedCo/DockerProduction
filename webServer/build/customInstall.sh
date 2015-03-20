#to be run as root

rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
yum -y install nginx php54-fpm php54-pecl-apc php54-pdo php54-mysql php54-pgsql
#systemctl start nginx.service
#systemctl enable nginx.service
#firewall-cmd --permanent --zone=public --add-service=http
#firewall-cmd --permanent --zone=public --add-service=https
#firewall-cmd --reload

sed -i -e '/gzip/c\gzip on;' /etc/nginx/nginx.conf
sed -i -e '/include \/etc\/nginx/c\include \/etc\/nginx\/sites-enabled\/*.conf;' /etc/nginx/nginx.conf
mkdir /etc/nginx/sites-available
mkdir /etc/nginx/sites-enlabled
chown amlwwalker:amlwwalker /etc/nginx/sites-*
chmod 700 /etc/nginx/sites-*


exit 0 #required for docker to be happy
