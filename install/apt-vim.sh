curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh
source ~/.bashrc
rm ~/.vimpkg/vim_config.json
ln -s $1/$2/vim/vim_config.json ~/.vimpkg/vim_config.json
apt-vim install -y
git checkout .
