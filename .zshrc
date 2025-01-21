export NVM_DIR="$HOME/.nvm"
export TERMINAL="kitty"

source /usr/share/nvm/init-nvm.sh
source /usr/share/zinit/zinit.zsh

zinit light zsh-users/zsh-syntax-highlighting

bindkey -v

eval "$(starship init zsh)"
