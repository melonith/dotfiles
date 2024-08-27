#!/usr/bin/env sh

# start ssh-agent on system start
if [ -z "$SSH_AGENT_PID" ]; then
    eval "$(ssh-agent)"
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

export EDITOR="hx"
export VISUAL="hx"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export GOPATH="$HOME/.local/shared/go"
if [ -d "$GOPATH/bin" ]; then
    PATH="$GOPATH/bin:$PATH"
fi

if ! tmux has-session -t main 2>/dev/null; then
    tmux new-session -ds main
fi
 
# if [ -z "$TMUX" ]; then
#     tmux attach -t main
# fi
 
# set aliases or a test.
alias ls='ls -A'
alias ll='ls -lA'
alias tm='tmux attach -t main'
