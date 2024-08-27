# dotfiles

This is just a simple configuration in order to get things done as fast as possible.

I mostly use this configuration as a fast way to develop on termux and WSL for windows.

I don't use a ton of extra tools and most of my setup is focused on just using Tmux.
I find that this works for me a lot better than most advanced setups.

## Installation

``` sh
git clone https://github.com/melonith/dotfiles $HOME/src/dotfiles
cd ..
ln -s $HOME/src/dotfiles/profile $HOME/.profile
ln -s $HOME/src/dotfiles/vimrc $HOME/.vimrc
ln -s $HOME/src/dotfiles/config $HOME/.config
ln -s $HOME/src/dotfiles/gitconfig $HOME/.gitconfig
mkdir $HOME/.local
ln -s $HOME/src/dotfiles/bin $HOME/.local/bin
````
