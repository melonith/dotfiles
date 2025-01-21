function tm --wraps='tmux attach -t main' --description 'alias tm tmux attach -t main'
    tmux attach -t main $argv
end
