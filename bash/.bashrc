#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export LS_OPTIONS='--color=auto'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

bind '"\C-f": "bash ~/.scripts/tmux_session.sh\n"'
