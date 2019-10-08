set -o vi
autoload -U colors && colors
autoload -U compinit
setopt HIST_IGNORE_DUPS
compinit

bindkey '^R' history-incremental-search-backward

export PS1=$'%m:%~ %{\E[33m%}%#%{\E[0m%} '

export EDITOR=vi

[[ -d $HOME/.zshenvd ]] && for e in $HOME/.zshenvd/*; do source $e; done
