# Set CLICOLOR if you want Ansi Colors in iTerm3 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

#!/bin/bash
# locale
LC_CTYPE="en_US.UTF-8"
# export TERM=xterm-256color

# various ls alias based on which type of system we are in
OS_TYPE="$(uname)"

if [ "${OS_TYPE}" == "Darwin" ]; then
    alias l='ls -Glh'
    alias ll='ls -Glh'
    alias wget="curl -O"
elif [ "${OS_TYPE}" == "Linux" ]; then
    alias ll='ls -lh --color'
    alias l='ls -lh --color'
fi

# http://superuser.com/questions/124845/can-you-disable-the-ctrl-s-xoff-keystroke-in-putty
stty -ixon

bind 'set bind-tty-special-chars off'

# set 'v' alias based on if nvim is present
if [ -n "$(which nvim)" ]; then
    alias v="nvim"
    export EDITOR='nvim'
else
    alias v="vim"
    export EDITOR='vim'
fi

# disable rm
alias rm='echo "do not use rm, use trash-put(trash) instead "; false'

# various cd
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."

. ~/.bashrc
