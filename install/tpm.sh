# ref
# https://github.com/tmux-plugins/tpm#installation
target="$HOME/.tmux/plugins/tpm"

if [[ ! -d $target ]]; then
    git clone https://github.com/tmux-plugins/tpm $target
fi

echo "Now open tmux and do this cmd `tmux source ~/.tmux.conf`"
echo "After that and you're still inside tmux press <prefix> I"
echo "done!"
