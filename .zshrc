HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Options to control history behavior
setopt APPEND_HISTORY         # Append instead of overwrite
setopt HIST_IGNORE_DUPS       # Don't record duplicate commands in a row
setopt HIST_IGNORE_ALL_DUPS   # Remove older duplicate commands
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS      # Don't show duplicates in search
setopt HIST_REDUCE_BLANKS     # Remove superfluous blanks
setopt SHARE_HISTORY          # Share command history across terminals
export HISTIGNORE="ls:cd:pwd:exit"

export NVM_DIR="$HOME/.nvm"
export TERMINAL="kitty"
export FZF_DEFAULT_COMMAND="find . \( -path '*node_modules*' -o -path '*git*' \) -prune -o -type f -print"
export FZF_DEFAULT_OPTS="--style minimal"

alias ls="ls --color=always"

source /usr/share/nvm/init-nvm.sh
source /usr/share/zinit/zinit.zsh
source <(fzf --zsh)

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

# bindkey -v

eval "$(starship init zsh)"
