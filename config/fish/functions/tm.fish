function tm --description 'function to launch tmux into our environment. Loads the main session.'
    # are we in tmux?
    if test -n "$TMUX"
        if test "$(tmux display-message -p '#S')" = main
            return
        end
        if tmux has-session -t main
            tmux switch-client -t main
        end
    end
    # is tmux running?
    set -l tmux_running $(pgrep tmux)
    if test -n "$tmux_running"
        if ! tmux has-session -t main
            tmux new-session -ds main -c "$HOME"
        end
        tmux attach -t main
    else
        tmux new-session -ds main -c "$HOME"
    end
end
