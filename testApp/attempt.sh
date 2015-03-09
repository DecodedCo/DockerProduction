
docker rm SSL
docker run -v /srv/ssl/:/srv/ssl --name SSL centos:7 true
docker run --volumes-from SSL nginx:latest /bin/bash
