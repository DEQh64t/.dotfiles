# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f /etc/bashrc ]] && . /etc/bashrc

export TERM=xterm-256color
export PATH=$HOME/.local/bin:$PATH
export MANPATH=$MANPATH:

# Environment-modules
export MODULEPATH=/bio-apps/scoop/modulefiles:$HOME/scoop/modulefiles
##
module load starship
eval "$(starship init bash)"
module load neovim tmux temurin8-jdk
## ibraheemdev/modern-unix
module load jq delta

# Functions and aliases
[[ -f ~/.bash_functions ]] && . ~/.bash_functions
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
