# Guide d'installation Raspberry Pi

## Post install

### Premières commandes
raspi-config (pour changer la locale, étendre l'espace disque etc)

sudo apt update && sudo apt upgrade

### Packages complémentaires

sudo apt install wget git

### Créer un utilisateur

### Créer un dépôt git
mkdir git/punkt
cd git/punkt
git init --bare
