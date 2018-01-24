curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh
source ~/.bashrc
rm ~/.vimpkg/vim_config.json
ln -s ~/.dotfiles/virtualmachine/vim/vim_config.json ~/.vimpkg/vim_config.json
apt-vim install
