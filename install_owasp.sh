#/bin/bash
############################
#installation de mutillidae#
############################

#installation des dépendances logicielles
echo "installation des dépendances logicielles"
apt install git php-xml php7.4-fpm libapache2-mod-php php-mysql mariadb-server apache2 apache2-utils php-xml php-gd php-imap php-php-gettext php-curl zip -y

echo "Création de la BDD"
# creation de la BDD
mysql -u root -e "CREATE DATABASE mutillidae;"
# creation du compte et des droits sur la BDD
mysql -u root -e "grant all privileges on mutillidae.* to 'root'@'localhost' identified by '';"
mysql -u root -e "flush privileges;"

#creation du dossier mutillidae dans apache2
mkdir /var/www/html/mutillidae

# download de mutillidae
echo "download de mutillidae"
git clone https://github.com/so-sc/OWASP-mutillidae-2.git

#on renomme le dossier en mutillidae
echo "on renomme le dossier en mutillidae"
mv OWASP-mutillidae-2/ mutillidae

#on deplace le dossier dans /var/www/html
echo "on deplace le dossier dans /var/www/html"
mv mutillidae/ /var/www/html/

#mise à jour des droits sur le dossier
echo "mise à jour des droits sur le dossier"
chown -R www-data /var/www/html/mutillidae

#on relance les daemons..
echo "on relance les daemons..."
a2enmod proxy_fcgi setenvif
systemctl restart apache2
a2enconf php7.4-fpm
systemctl reload apache2
systemctl restart apache2.service
systemctl restart php7.4-fpm
systemctl restart mysql
echo " Installation de OWASP MUTILLIDAE terminé."
