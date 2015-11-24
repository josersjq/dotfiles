#!/bin/bash
SSH_ENV="$HOME/.ssh/environment"

# Add all SSH keys here
declare -a SSH_KEYS
SSH_KEYS=(
    "$HOME/.ssh/id_rsa"
    );

function start_agent() {
    /usr/bin/ssh-agent | sed  's/^echo/#echo/' > "${SSH_ENV}"
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null

    for i in ${SSH_KEYS[@]}
    do
        /usr/bin/ssh-add $i>/dev/null 2>&1
    done
}

if [ -f "${SSH_ENV}" ]; then
    ps -ef | grep '${SSH_AGENT_PID}' | grep ssh-agent$ > /dev/null || {
        start_agent;

    }
else
    start_agent;
fi

