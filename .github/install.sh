git clone https://github.com/Nikitat0/dotfiles.git $HOME/.dotfiles --bare
git --work-tree=$HOME --git-dir=$HOME/.dotfiles stash push
