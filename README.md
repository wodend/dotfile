# Dotfile
Configure UNIX-like operating systems.

# Installation
1. `$ git clone --bare https://github.com/wodend/dotfile.git $HOME/.dotfile.git`
2. `$ git --git-dir=$HOME/.dotfile.git --work-tree=$HOME checkout`

## Optional
After installation, run `$ dotfile config --local status.showUntrackedFiles no`
, so `dotfile status` doesn't show all of the files in your home directory.

# Usage
Your home directory becomes a git repo managed by the `dotfile` command, e.g.
```
dotfile add .vimrc
dotfile commit -m 'Add listchars.'
```
Will add changes to '.vimrc'.
