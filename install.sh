# Symlinks all Dotfiles to their respective directory
# Path Variable must be an absolute path

path=$HOME/.dotfiles

# NVIM Symlink
ln -sf $path/nvim ~/.config

# Gitconfig Symlink
ln -sf $path/git/.gitconfig ~/

# Tmux config Symlink
ln -sf $path/tmux/.tmux.conf ~/

# zshrc Symlink
ln -sf $path/zsh/.zshrc ~/
