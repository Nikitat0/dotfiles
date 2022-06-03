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

eval "$(sheldon source)"
eval "$(starship init zsh)"
