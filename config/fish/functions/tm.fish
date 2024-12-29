function tm
if tmux has-session -t main
tmux attach -t main
end
end
