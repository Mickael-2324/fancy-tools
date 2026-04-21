#!/bin/bash
set -e

# Sauvegarde du .bashrc actuel
cp ~/.bashrc ~/.bashrc.bak.$(date +%F_%T)

# Fonction pour ajouter une ligne si absente
add_if_missing() {
  grep -qF "$1" ~/.bashrc || echo "$1" >> ~/.bashrc
}

# Ajout des lignes nécessaires dans .bashrc (avec $ échappés)
add_if_missing "source ~/SE_PSL/fancy-tools/.aliases"
add_if_missing "source ~/SE_PSL/fancy-tools/fancy_functions.sh"
add_if_missing "export PATH=\$PATH:\$HOME/bin"

# Clonage du dépôt si absent
if [ ! -d "$HOME/SE_PSL/fancy-tools" ]; then
  git clone https://github.com/<login>/fancy_tools.git ~/SE_PSL/fancy-tools
fi

