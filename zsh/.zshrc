autoload colors; colors

PROMPT="%{${fg[green]}%}[%*]%#%f "
RPROMPT="%{${fg[yellow]}%}[%48<...<%~%<<]%f"

fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
autoload -U compinit
compinit -u

case $OSTYPE in
    darwin*)
        alias ls='ls -FG'
        alias la='ls -A'
        alias ll='ls -hl'
        alias lla='ll -A'
	;;
esac
