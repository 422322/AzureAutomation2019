#!/bin/bash
sudo apt-get -y update

# installeer Apache2
sudo apt-get -y install apache2 ssl-cert
#alles wordt goed uitgevoerd, behalve dit commando. Daarom werkt het volgende commando ook niet, want /var/www/html/ bestaat niet.

sudo chmod 777 /var/www/html/index.html

# HTML demo pagina maken
sudo echo \<center\>\<h1\>Solid Partners\</h1\>\<br/\>\<br/\>Demo pagina\<br/\>\</center\> > /var/www/html/index.html

# herstart Apache
sudo apachectl restart
