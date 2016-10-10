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

alias l="ls -lFh ${colorflag} --hide='*.pyc'"
alias la="ls -AF ${colorflag} --hide='*.pyc'"
alias ll="ls -lah ${colorflag} --hide='*.pyc'"

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
# nvm
alias nu='nvm use'
alias nd='nvm deactivate'
alias n1='nvm use 0.12.7'

# to resume suspended jobs.
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
