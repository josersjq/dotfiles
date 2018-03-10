curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh
rm ~/.vimpkg/vim_config.json
ln -s $1/$2/vim/vim_config.json ~/.vimpkg/vim_config.json
echo "Please do command 'source ~/.bashrc'"
echo "Then do 'apt-vim install -y'"
git checkout .
