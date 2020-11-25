autoload colors; colors

PROMPT="%{${fg[green]}%}[%*]%#%f "
RPROMPT="%{${fg[yellow]}%}[%48<...<%~%<<]%f"

refresh-prompt() {
    zle .reset-prompt
    zle .accept-line
}
zle -N accept-line refresh-prompt

fpath=(${ZDOTDIR}/completion $fpath)

autoload -U compinit
compinit -u

case $OSTYPE in
    darwin*)
        alias ls='ls -FG'
        alias la='ls -A'
        alias ll='ls -hl'
        alias lla='ll -A'
        if [ -d /Users/brew ]; then
            alias brew='sudo -H -u brew brew'
        fi
	;;
esac
