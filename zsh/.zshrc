autoload colors; colors

PROMPT="%{${fg[green]}%}[%*]%#%f "
RPROMPT="%{${fg[yellow]}%}[%48<...<%~%<<]%f"

case $OSTYPE in
    darwin*)
        alias ls='ls -FG'
        alias la='ls -A'
        alias ll='ls -hl'
        alias lla='ll -A'
	;;
esac
