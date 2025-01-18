set -g fish_greeting

set -gpx PATH "$HOME/bin"
set -gpx PATH "$HOME/.local/bin"

set -gx GOPATH "$HOME/.local/state/go"
set -pgx PATH "$HOME/.local/state/npm/bin"

if status is-interactive
    # Commands to run in interactive sessions can go here
end
