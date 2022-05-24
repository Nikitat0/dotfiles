export ZSH="$HOME/.sheldon/repos/github.com/ohmyzsh/ohmyzsh"

eval "$(sheldon source)"

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

alias dotfiles="git --work-tree=$HOME --git-dir=$HOME/.dotfiles"

ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}

eval "$(starship init zsh)"
