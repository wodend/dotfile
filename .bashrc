# Do nothing if not running interactively.
[[ $- != *i* ]] && return

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# Disable Ctrl+s
stty -ixon

# Material Palenight colorscheme
. "${HOME}/.local/bin/base16-material-palenight.sh"

# Alias for managing dotfiles
alias dotfile="git --git-dir=${HOME}/.dotfile.git --work-tree=${HOME}"
