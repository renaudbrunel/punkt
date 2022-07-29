# Installation d'un nouveau système

Notes d'installation d'un nouveau système GNU/Linux.
Pour convertir ces notes en PDF :

pandoc -s -o todo_install.pdf todo_install.md 



## Actions à réaliser en root
### Installation de packages additionnels

Les packages additionnels sont listés dans le fichier "install_packages.sh".
sudo ./install_packages.sh

### Création de l'utilisateur
#### Commande de création

useradd renaud

#### Groupes complémentaires

usermod -aG wheel renaud

#### Configuration de sudo

visudo

## Actions à réaliser en tant que user

### Configuration de git
git config --global user.name "Renaud Brunel"
git config --global user.email renaud.brunel@gmail.com
git config --global core.editor vim


### Récupération des fichiers de configuration git

mkdir ~/git

cd ~/git

git clone https://github.com/StochasticSocks/config-files.git

### Récupération des fichiers de configuration git depuis le serveur privé
mkdir ~/git
mkdir ~/git/punkt
cd ~/git/punkt
git remote add punkt pi@192.168.1.30:/home/renaud/git/punkt

### Configuration de GPG

### Utilisation des clés stockées dans la smartcard

### Import des fichiers de configuration

### Activation des services
sudo systemctl enable systemd-resolved.service

