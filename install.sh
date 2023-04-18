DOT_DIR=~/app/dotfiles

mkdir -p ~/.config/nvim/
touch ~/.config/nvim/dein.toml ~/.config/nvim/index.vim

ln -sf $DOT_DIR/vim/dein.toml ~/.config/nvim/dein.toml
ln -sf $DOT_DIR/vim/index.vim ~/.config/nvim/index.vim
