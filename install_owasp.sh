#/bin/bash
############################
#installation de mutillidae#
# par sbeteta@beteta.org   #
############################

#installation des dépendances logicielles
echo "Installation des dépendances logicielles"
sleep 5
apt install git php-xml php7.4-fpm libapache2-mod-php php-mysql mariadb-server apache2 apache2-utils php-xml php-gd php-imap php-php-gettext php-curl zip -y
clear

# creation de la BDD
echo "Création de la BDD"
sleep 3
mysql -u root -e "CREATE DATABASE mutillidae;"
# creation du compte et des droits sur la BDD
mysql -u root -e "grant all privileges on mutillidae.* to 'root'@'localhost' identified by '';"
mysql -u root -e "flush privileges;"
clear

#creation du dossier mutillidae dans /var/www/html
echo "creation du dossier mutillidae dans /var/www/html"
sleep 3
mkdir /var/www/html/mutillidae

# Download de mutillidae
echo "Download de mutillidae"
sleep 3
git clone https://github.com/so-sc/OWASP-mutillidae-2.git
clear

#on renomme le dossier en mutillidae
sleep 3
echo "on renomme le dossier en mutillidae"
mv OWASP-mutillidae-2/ mutillidae

#on deplace le dossier dans /var/www/html
echo "On deplace le dossier dans /var/www/html"
sleep 3
mv mutillidae/ /var/www/html/

#mise à jour des droits sur le dossier
echo "Mise à jour des droits sur le dossier mutillidae"
sleep 2
chown -R www-data /var/www/html/mutillidae

#on relance les daemons...
echo "on relance les daemons..."
sleep 3
a2enmod proxy_fcgi setenvif
systemctl restart apache2
a2enconf php7.4-fpm
systemctl reload apache2
systemctl restart apache2.service
systemctl restart php7.4-fpm
systemctl restart mysql
clear
echo " Installation de OWASP MUTILLIDAE terminé."
echo ""
echo "Utilisation : se connecter depuis votre pc hôte sur http://@ip-de-cet-VM/mutillidae" 
echo "Puis cliquer sur setup/reset the DB pour accéder à mutillidae."
