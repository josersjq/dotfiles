
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git # You can add hg too if needed: `git hg`
zstyle ':vcs_info:git*' formats ' %b'
zstyle ':vcs_info:git*' actionformats ' %b|%a'

autoload colors && colors

git_dirty() {
    # check if we're in a git repo
    command git rev-parse --is-inside-work-tree &>/dev/null || return

    # check if it's dirty
    command git diff --quiet --ignore-submodules HEAD &>/dev/null;
    if [[ $? -eq 1 ]]; then
        echo "%F{red}✗%f"
    else
        echo "%F{green}✔%f"
    fi
}

git_prompt_info() {
 ref=$(/usr/bin/git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

needs_push() {
  if [[ $(git cherry -v @{upstream} 2>/dev/null) == "" ]]
  then
    echo ""
  else
    echo "%F{magenta}☁%f "
  fi
}

# indicate a job (for example, vim) has been backgrounded
suspended_jobs() {
    sj=$(jobs 2>/dev/null | tail -n 1)
    if [[ $sj == "" ]]; then
        echo ""
    else
        echo "%F{208}✱%f"
    fi
}
__node() {
  if hash node 2>/dev/null; then
      local v=$(node -v)
    fi
  [ "$v" != "" ] && echo "%F{green}◉%f %F{241}${v:1}%f"
}

precmd() {
    vcs_info
    print -P "%{$fg_bold[white][%F{cyan}%~%f%F{white}]%f"
}

export PROMPT='%(?.%F{119}.%F{red})➤%f  '
export RPROMPT='`git_dirty`%F{241}$vcs_info_msg_0_%f`needs_push``suspended_jobs``__node`'
