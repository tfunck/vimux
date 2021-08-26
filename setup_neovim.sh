mkdir -p ~/.config ~/.config/nvim
ln -s ~/.vim/autoload autoload
ln -s ~/.vim/bundle/ bundle

ln -s ./.config/nvim/init.vim ~/.config/nvim/init.vim

# Install Pathogen

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install syntastic

cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

# Install NerdTree
cd ~/.config/nvim/bundle/
git clone https://github.com/preservim/nerdtree

# Install YouCompleteMe
apt install build-essential cmake vim-nox python3-dev mono-complete golang nodejs default-jdk npm
cd ~/.config/nvim/bundle/
git clone https://github.com/ycm-core/YouCompleteMe
cd YouCompleteMe
git submodule update --init --recursive
