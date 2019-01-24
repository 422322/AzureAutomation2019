#!/bin/bash
sudo apt-get -y update

# installeer NGINX
sudo apt-get -y install nginx

# HTML demo pagina maken
sudo echo \<center\>\<h1\>Solid Partners\</h1\>\<br/\>\<br/\>Demo pagina vanaf server \<b\>\<script\>var myArray \= \[\"MyUbuntuVM1\"\,\"MyUbuntuVM2\"\,\"MyUbuntuVM3\"\]\;var randomItem \= myArray\[Math\.floor\(Math\.random\(\)\*myArray\.length\)\]\;document\.body\.innerHTML \= randomItem\;\</script\>\</b\>\<br/\>\</center\> > /usr/share/nginx/html/index.html

# herstart NGINX
service nginx restart
