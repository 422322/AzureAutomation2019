#!/bin/bash
sudo apt-get -y update

# install Apache2
sudo apt-get -y install apache2 

# write some HTML
sudo echo \<center\>\<h1\>Solid Partners\</h1\>\<br/\>\<br/\>Demo pagina\<br/\>\</center\> > /var/www/html/demo.html

# restart Apache
sudo apachectl restart
