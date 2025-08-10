#/bin/bash
############################
#installation de mutillidae#
# par sbeteta@beteta.org   #
############################

# Installation des dépendances logicielles
echo "[1/8] Installation des dépendances logicielles"
sleep 5
apt install git php-xml php7.4-fpm libapache2-mod-php php-mysql mariadb-server apache2 apache2-utils php-xml php-gd php-imap php-php-gettext php-curl zip -y
clear

# Création de la BDD
echo "[2/8] Création de la BDD"
sleep 3
mysql -u root -e "CREATE DATABASE mutillidae;"
# Création du compte et des droits sur la BDD
mysql -u root -e "grant all privileges on mutillidae.* to 'root'@'localhost' identified by '';"
mysql -u root -e "flush privileges;"
clear

# Création du dossier mutillidae dans /var/www/html
echo " [3/8] Creation du dossier mutillidae dans /var/www/html"
sleep 3
mkdir /var/www/html/mutillidae

# Download de mutillidae
echo " [4/8] Download de MUTILLIDAE"
sleep 3
git clone https://github.com/so-sc/OWASP-mutillidae-2.git
clear

# o
On renomme le dossier en mutillidae
sleep 3
echo " [5/8] On renomme le dossier en mutillidae"
mv OWASP-mutillidae-2/ mutillidae

# On deplace le dossier dans /var/www/html
echo "[5/8] On deplace le dossier dans /var/www/html"
sleep 3
mv mutillidae/ /var/www/html/

# Mise à jour des droits sur le dossier
echo "[6/8] Mise à jour des droits sur le dossier mutillidae"
sleep 2
chown -R www-data /var/www/html/mutillidae

#on relance les daemons...
echo "[7/8] On relance les daemons..."
sleep 3
a2enmod proxy_fcgi setenvif
systemctl restart apache2
a2enconf php7.4-fpm
systemctl reload apache2
systemctl restart apache2.service
systemctl restart php7.4-fpm
systemctl restart mysql
clear
echo " [8/8] Installation de OWASP MUTILLIDAE terminé."
echo ""
echo "Utilisation : se connecter depuis votre pc hôte sur http://@ip-de-cet-VM/mutillidae" 
echo "Puis cliquer sur setup/reset the DB pour accéder à mutillidae."
