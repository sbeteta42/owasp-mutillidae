# owasp-mutillidae
Installation automatisée de mutillidae pour les TPs OWASP

## Pré-requis
OS: Debian 10/11
```bash
apt install -y openssh-server git 
```

## Installation
```bash
git clone https://github.com/sbeteta42/owasp-mutillidae.git
cd owasp-mutillidae
chmod +x install_owasp.sh
./install_owasp.sh
```

## utilisation
http://@ip-de_la-vm/mutillidae depuis un navigateur web
