#!/bin/bash
sudo apt-get -y update

# installeer NGINX
sudo apt-get -y install nginx

# HTML demo pagina maken
sudo echo \<center\>\<h1\>Solid Partners\</h1\>\<br/\>\<br/\>Demo pagina vanaf server \<b\>`hostname`\</b\>\<br/\>\</center\> > /usr/share/nginx/html/index.html

# herstart NGINX
service nginx restart
