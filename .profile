# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.

export PATH=$HOME/bin:$PATH

# Color prompt with showing current git branch
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[00m\]\[\033[01;31m\]$(__git_ps1 " {%s}")\[\033[00m\]\$ '

# Custom aliases
alias mc='mc -s'

# Custom git aliases
alias ga='git add'
alias gb='git branch'
alias gco='git checkout'
alias gst='git status'
alias gitk='gitk --all'

# Enable completion for custom git aliases
complete -o default -o nospace -F _git_add ga
complete -o default -o nospace -F _git_branch gb
complete -o default -o nospace -F _git_checkout gco

# Enable programmable completion features
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Enable rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
