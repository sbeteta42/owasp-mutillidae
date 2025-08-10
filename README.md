# ![Mutillidae Logo](https://owasp.org/assets/images/logo.png) OWASP Mutillidae II – Application Web Vulnérable 🔓

**Mutillidae II** est une application Web volontairement vulnérable, conçue pour l’apprentissage et la pratique du pentest en suivant les failles **OWASP Top-10**.  
Idéale pour les labs, CTF et formations en cybersécurité.

---

![OS](https://img.shields.io/badge/OS-Linux%20|%20Windows-blue)  
![Status](https://img.shields.io/badge/Status-Lab%20Ready-success)  
![Language](https://img.shields.io/badge/Language-PHP%20%7C%20JavaScript-lightgrey)  
![Licence](https://img.shields.io/badge/License-GPLv3-orange)

---

## 📑 Table des matières
1. [💡 Présentation](#-présentation)  
2. [✨ Fonctionnalités](#-fonctionnalités)  
3. [⚙️ Installation classique (LAMP/WAMP/XAMPP)](#️-installation-classique-lampwampxampp)  
4. [🐳 Installation via Docker](#-installation-via-docker)  
5. [🔒 Conseils de sécurité](#-conseils-de-sécurité)  
6. [📷 Captures d’écran](#-captures-décran)  
7. [🤝 Contribution](#-contribution)  
8. [📜 Licence](#-licence)  

---

## 💡 Présentation
Mutillidae II propose **plus de 40 vulnérabilités exploitables** couvrant les OWASP Top-10 de 2007 à 2021.  
Avec ses **hints intégrés**, ses **modes de sécurité** et sa **réinitialisation en un clic**, c’est l’outil parfait pour apprendre et s’exercer.

---

## ✨ Fonctionnalités
- 📌 Vulnérabilités basées sur **OWASP Top-10**  
- 🔄 **Modes sécurité** : *Insecure* ou *Secure*  
- 💡 **Hints et tutos** intégrés  
- 🔁 **Reset DB** rapide pour restaurer l’environnement  
- 💻 Compatible **LAMP, WAMP, XAMPP, Docker**

---

## ⚙️ Installation classique (LAMP/WAMP/XAMPP)
1. 📥 Cloner le dépôt et installation  
```bash
git clone https://github.com/sbeteta42/owasp-mutillidae.git
cd owasp-mutillidae
chmod +x install_owasp.sh
./install_owasp.sh
```
🛠 Configurer la base MySQL/MariaDB

## 🌐 Accéder via le navigateur
- Se connecter depuis votre pc hôte sur http://@ip-de-cet-VM/mutillidae" 
- Puis cliquer sur 🔄setup/reset the DB🔄 pour accéder à mutillidae."

## 🐳 Installation via Docker
```bash
git clone https://github.com/webpwnized/mutillidae-docker.git
cd mutillidae-docker
docker compose -f .build/docker-compose.yml up --build -d
```
📍 Services inclus :
- Mutillidae : http://localhost
- PHPMyAdmin : http://localhost:81
- LDAP : port 389

🔒 Conseils de sécurité
🚫 Ne jamais exposer Mutillidae sur Internet

🖥 A utiliser uniquement dans un environnement isolé (VM, réseau fermé)

## 🌐 Utilisation : 
- Se connecter depuis votre pc hôte sur http://@ip-de-cet-VM/mutillidae 
- Puis cliquer sur setup/reset the DB pour accéder à mutillidae.

🔄 Restaurer avec Reset DB après chaque test

## 📜 Licence
- Ce projet est distribué sous GPLv3 – libre à utiliser et modifier.
