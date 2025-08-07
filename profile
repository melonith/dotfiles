export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# exports for various programs
export GOPATH="$XDG_STATE_HOME/go"
export CARGO_HOME="$XDG_STATE_HOME/cargo"
export RUSTUP_HOME="$XDG_STATE_HOME/rustup"
export GNUPGHOME="$XDG_STATE_HOME/gnupg"

export LESSHISTFILE="$XDG_STATE_HOME/lesshist"
export MYSQL_HISTFILE="$XDG_STATE_HOME/mysqlhist"
export SQLITE_HISTORY="$XDG_STATE_HOME/sqlitehist"

export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PASSWORD_STORE_DIR="$XDG_STATE_HOME/pass"
export PGPPATH="$GNUPGHOME"

export FZF_DEFAULT_COMMAND='rg --no-ignore-vcs --files --hidden --smart-case --glob "!.git/*" --glob "!.obsidian/*"'

if [ -d "$HOME/.local/bin" ] ; then
  export PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/bin" ] ; then
  export PATH="$HOME/bin:$PATH"
fi

if [ -d "$GOPATH/bin" ] ; then
  export PATH="$GOPATH/bin:$PATH"
fi

if [ -d "$XDG_STATE_HOME/npm/bin" ] ; then
  export PATH="$XDG_STATE_HOME/npm/bin:$PATH"
fi

if [ -f "$CARGO_HOME/env" ] ; then
  . "$CARGO_HOME/env"
fi

if command -v nvim >/dev/null ; then
  export EDITOR="nvim"
  export VISUAL="nvim"
else
  export EDITOR="vim"
  export VISUAL="vim"
fi
