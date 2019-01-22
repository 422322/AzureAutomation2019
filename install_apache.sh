#!/bin/bash
sudo apt-get -y update

# install Apache2
sudo apt-get -y install apache2 #alles wordt goed uitgevoerd, behalve dit commando. Daarom werkt het volgende commando ook niet, want /var/www/html/ bestaat niet.

# write some HTML
sudo echo \<center\>\<h1\>Solid Partners\</h1\>\<br/\>\<br/\>Demo pagina\<br/\>\</center\> > /var/www/html/index.html

# restart Apache
sudo apachectl restart
