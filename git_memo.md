# Memento Git

## Installation & configuration de git

`sudo pacman -S git
`git config --global user.name "Renaud B."
`git config --global email renaud.brunel@gmail.com
`git config --core.editor vim

## Configuration du compte GitHub

Le compte GitHub est configuré avec U2F (yubikey) pour l'authentification. Il
est nécessaire de générer les clés openSSH sur l'ordinateur de travail et
d'importer la clé publique dans le compte GitHub (paramètres du compte) pour
permettre l'authentification sur le compte et le _push_ vers les dépôts.

