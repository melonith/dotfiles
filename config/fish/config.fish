set -g fish_greeting

set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

if test -d "$HOME/bin"
    set -gpx PATH "$HOME/bin"
end

if test -d "$HOME/.local/bin"
    set -gpx PATH "$HOME/.local/bin"
end

set -gx GOPATH "$XDG_STATE_HOME/go"
if test -d "$GOPATH/bin"
    set -gpx PATH "$GOPATH/bin"
end

set -pgx PATH "$XDG_STATE_HOME/npm/bin"

# add doom bin folder to path
set -pgx PATH "$XDG_CONFIG_HOME/emacs/bin"

# Various file locations.
set -gx CARGO_HOME "$XDG_STATE_HOME/cargo"
set -gx RUSTUP_HOME "$XDG_STATE_HOME/rustup"
set -gx GNUPGHOME "$XDG_STATE_HOME/gnupg"
set -gx LESSHISTFILE "$XDG_STATE_HOME/lesshist"
set -gx MYSQL_HISTFILE "$XDG_STATE_HOME/mysqlhist"
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
set -gx PASSWORD_STORE_DIR "$XDG_STATE_HOME/pass"
set -gx PGPPATH "$GNUPGHOME"
set -gx SQLITE_HISTORY "$XDG_STATE_HOME/sqlitehist"

# Add editor and visual arguments
if command -v hx >/dev/null || command -v helix >/dev/null
    if test -x $(command -v hx >/dev/null) || test -x $(command -v helix >/dev/null)
        set -gx EDITOR hx
        set -gx VISUAL hx
    end
else if command -v nvim >/dev/null && command -v nvim >/dev/null
    if test -x $(command -v nvim >/dev/null)
        set -gx EDITOR nvim
        set -gx VISUAL nvim
    end
else
    set -gx EDITOR vim
    set -gx VISUAL vim
end

# make fzf.vim use ripgrep for searching files
set -gx FZF_DEFAULT_COMMAND 'rg --no-ignore-vcs --files --hidden --smart-case --glob "!.git/*" --glob "!.obsidian/*"'
if status is-interactive
    # Commands to run in interactive sessions can go here
    # fish_vi_key_bindings
    # if not tmux has-session -t main 2>/dev/null
    #     tmux new-session -ds main
    # end
end
