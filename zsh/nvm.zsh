
[ -s "/usr/share/nvm/nvm.sh" ] && . "/usr/share/nvm/nvm.sh"  # This loads nvm

#Automatically call `nvm use` if `node` is not yet loaded and
#cwd contains `.nvmrc` with node version to load
autoload -U add-zsh-hook
load-nvmrc() {
  isNodeLoaded=$(which node)
  if [[ $isNodeLoaded = "node not found" && -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}
add-zsh-hook chpwd load-nvmrc
