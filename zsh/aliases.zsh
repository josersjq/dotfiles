# reload zsh config
alias reload!='source ~/.zshrc'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l="ls -lFh ${colorflag}"
alias la="ls -AF ${colorflag}"
alias ll="ls -lah ${colorflag}"

alias apt-get="sudo apt-get"

# tmux aliases
alias tmux='tmux -2'
alias ta='tmux attach'
alias td='tmux detach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'

# virtualenv
alias da='deactivate'
# if existing virtualenv!
alias scr='workon scrapy'
alias dja='workon django'
# nvm
alias nu='nvm use'
alias nd='nvm deactivate'
alias n1='nvm use 0.12.7'
