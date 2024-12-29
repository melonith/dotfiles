set -gx fish_greeting

set -pgx PATH "$HOME/bin"

set -gx EDITOR "vim"
set -gx VISUAL "vim"

if status is-interactive
    # Commands to run in interactive sessions can go here
end
