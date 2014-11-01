autoload colors; colors

PROMPT="%{${fg[green]}%}[%*]%#%f "
RPROMPT="%{${fg[yellow]}%}[%48<...<%~%<<]%f"

if which rbenv > /dev/null ; then
    fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
fi

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
