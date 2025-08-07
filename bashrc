# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto '
alias sway='pipewire >/dev/null 2>&1 & ; dbus-run-session sway'

PS1='[\u@\h \W]\$ '

