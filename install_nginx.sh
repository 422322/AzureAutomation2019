#!/bin/bash
sudo apt-get -y update

# installeer NGINX
sudo apt-get -y install nginx
#alles wordt goed uitgevoerd, behalve dit commando. Daarom werkt het volgende commando ook niet, want /var/www/html/ bestaat niet.

sudo chmod 777 /var/www/html/index.html

# HTML demo pagina maken
sudo echo \<center\>\<h1\>Solid Partners\</h1\>\<br/\>\<br/\>Demo pagina\<br/\>\</center\> > sudo echo \<center\>\<h1\>Solid Partners\</h1\>\<br/\>\<br/\>Demo pagina\<br/\>\</center\> > /usr/share/nginx/html/index.html

# herstart NGINX
service nginx restart
