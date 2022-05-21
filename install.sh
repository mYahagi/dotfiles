DOT_DIR=~/app/dotfiles

git clone https://github.com/mYahagi/dotfiles.git ${DOT_DIR}

ln -sf $DOT_DIR/.zshrc ~/.zshrc
ln -sf $DOT_DIR/vim/dein.toml ~/.config/nvim/dein.toml
ln -sf $DOT_DIR/vim/index.vim ~/.config/nvim/index.vim

