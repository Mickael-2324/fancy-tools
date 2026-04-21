# fancy_functions.sh
gco() {
  if [ ! -d .git ]; then
    echo "Erreur : pas un dépôt Git."
    return 1
  fi

  if [ -z "$1" ]; then
    echo "Usage : gco 'message'"
    return 1
  fi

  branch=$(git rev-parse --abbrev-ref HEAD)
  git commit -m "[$branch] $1"
}
