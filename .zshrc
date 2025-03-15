export NVM_DIR="$HOME/.nvm"
export TERMINAL="kitty"
export FZF_DEFAULT_OPTS="--style minimal"

source /usr/share/nvm/init-nvm.sh
source /usr/share/zinit/zinit.zsh
source <(fzf --zsh)

zinit light zsh-users/zsh-syntax-highlighting

# bindkey -v

eval "$(starship init zsh)"
