cp /build/test.vagrant.conf /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/test.vagrant.conf /etc/nginx/sites-enabled/test.vagrant.conf
#set up test site to be served on port 80
mkdir -p /srv/sites/test.vagrant.com
mv /build/index.php /srv/sites/test.vagrant.com
chown -R amlwwalker:amlwwalker /srv/sites/test.vagrant.com
chmod -R 755 /srv/sites/test.vagrant.com 
