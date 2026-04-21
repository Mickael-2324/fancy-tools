# Fancy Tools

## Description courte du projet
Ensemble d’alias et de fonctions Bash pour simplifier l’environnement de travail : navigation, gestion de fichiers et raccourcis et automatisation des commandes Git.

## Prérequis
- **OS** : Linux (Ubuntu) ou autre
- Connaissance de bash
- **Outils nécessaires** :
  - Compte GitHub avec le dépôt `fancy-tools`
  - `git` installé et configuré

## Installation (étapes pas à pas)
1. Copier le script install.sh dans votre $HOME (ou un dossier hors du dépôt).
2. Supprimer l’ancien dépôt si présent :
   rm -rf ~/SE_PSL/fancy-tools
3. Executer le script :
   bash ~/install.sh
4. Source ~/.bashrc
5. Ouvrir un nouveau terminal et tester les alias et fonctions

## Utilisation 
gss → git status
gpl → git pull
gpu → git push
gad → git add .

gco "message" → commit Git avec message formaté [dev] message
updateFancyTools → met à jour le dépôt fancy-tools depuis GitHub
ex: gco "ajout de la fonction mkcd"
    updateFancyTools

##Structure du projet 
~/SE_PSL/fancy-tools/
|__ .aliases              # Liste des alias
|__ fancy_functions.sh    # Fonctions utilitaires
|__ README.md             # Documentation du projet
|__ install.sh            # Script d’installation (copié ailleurs pour persistance)

