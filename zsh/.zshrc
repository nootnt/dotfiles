# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=4000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install

autoload -Uz compinit promptinit
compinit
promptinit

prompt walters blue

alias ls='ls -a --color=auto'
alias grep='grep --color=auto'
alias neofetch='fastfetch'
alias fetch='fastfetch'
