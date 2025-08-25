#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1="\[\e[38;5;208m\][\A]\[\e[m\]\[\e[38;5;203m\][\u]\[\e[m\]
\[\e[38;5;197m\][\w]>\[\e[m\] "

PS2="\[\e[38;5;197m\]›\[\e[m\] "

set -o vi
bind -s 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'
bind -x $'"\C-l":clear;'
