export ZSH="$HOME/.oh-my-zsh"

HYPHEN_INSENSITIVE="true"

plugins=(
    aliases
    alias-finder
    docker
    docker-compose
    git
    python
    rust
    vi-mode
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias clr="clear"
alias q="exit"
alias quit="exit"
alias e="exec"

ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}

eval "$(starship init zsh)"
