# punkt
Fichiers de configuration et notes générales.

## Rappels d'utilisation de git
Pour cloner le repo github: git clone <adresse du repo>
NB: la clé SSH de l'ordinateur est configurée sur GitHub pour permettre de
poster sur le dépôt (dépôt privé).


Pour ajouter les modifications au suivi avant commit : git add <filename>


Pour créer le commit : git commit - un message descriptif du commit peut être
ajouté.

Pour envoyer le commit : git push

# Installation d'un nouveau système

Notes d'installation d'un nouveau système GNU/Linux.
Pour convertir ces notes en PDF :

pandoc -s -o todo_install.pdf todo_install.md 



## Actions à réaliser en root
### Installation de packages additionnels

Les packages additionnels sont listés dans le fichier "install_packages.sh".
sudo ./install_packages.sh

Les paquets additionnels à installer sont notamment :

* firefox (on peut désinstaller le navigateur epiphany de gnome)
* calibre : bibliothèque epub
* utilitaires yubico : pour la gestion des yubikeys
* git
* hugo (?)
* keepassxc
* musescore
* gramps
* vlc
* gimp
* r
* rstudio (?)


### Création de l'utilisateur

`useradd renaud
À réaliser après l'installation de visudo qui crée le groupe wheel.
`usermod -aG wheel renaud

#### Configuration de sudo
export $EDITOR=/usr/bin/vim
visudo

## Actions à réaliser en tant que user

### Configuration de git
git config --global user.name "Renaud Brunel"
git config --global user.email renaud.brunel@gmail.com
git config --global core.editor vim



### Configuration complémentaire

Réglage du clavier bépo dans GDM pour permettre la saisie en bépo du mot de
passe lors du login : sudo localectl set-x11-keymap fr "" bepo

Génération des clés SSH propres à la machine :

Installation des drivers pour l'accélération vidéo matérielle
(intel-media-driver ? libva ?)


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

## Gestion du dual boot windows
Points d'attention :

* configurer windows pour gérer l'horloge matérielle en UTC (modification de
  registre),
* désactiver l'option de démarrage rapide dans windows (options d'alimentation /
  fonctions des boutons)
* inclure les options de montage du disque windows dans le fstab


Montage de la partition Windows au démarrage

mkdir /mnt/windows
ajouter au fichier /etc/fstab :

UUID=UUID_partition_windows   /mnt/windows    ntfs3   defaults,noatime  0 0

Récupération des polices MS :
En dual boot, avec la partition Windows montée sur /mnt/windows :
sudo ln -s /mnt/windows/Windows/Fonts /usr/share/fonts/WindowsFonts
sudo fc-cache --force






