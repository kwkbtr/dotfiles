# Lines configured by zsh-newuser-install
HISTFILE=~/.dotfiles/zsh/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
bindkey -e
# End of lines configured by zsh-newuser-install

# Homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
fpath=(
    ~/.local/share/zsh/site-functions
    /opt/homebrew/share/zsh/site-functions
    $fpath
)

# Custom prompt
autoload -Uz colors
colors

PROMPT="%{${fg[green]}%}[%*]%#%f "
RPROMPT="%{${fg[yellow]}%}[%48<...<%~%<<]%f"

refresh-prompt() {
    zle .reset-prompt
    zle .accept-line
}
zle -N accept-line refresh-prompt

# Aliases

case $OSTYPE in
    darwin*)
        alias ls='ls -FG'
        if [ -d /Users/brew ]; then
            alias brew='sudo -H -u brew brew'
        fi
    ;;
    linux-gnu)
        alias ls='ls -F --color'
    ;;
esac

alias la='ls -A'
alias ll='ls -hl'

if command -v eza > /dev/null ; then
    alias ls='eza'
    alias ll='eza -hl --git --git-repos'
    alias lt='eza -T'
fi

export EDITOR=vi

if command -v bat > /dev/null ; then
    export PAGER='bat --style=rule,snip'
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
    alias less='bat'
fi

# The following lines were added by compinstall

zstyle ':completion:*' auto-description '[arg] %d'
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' format '[%d]'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 0
zstyle ':completion:*' menu select=long
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl true
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/Users/q/.dotfiles/zsh/.zshrc'

autoload -Uz compinit
zcompdump=${ZDOTDIR}/.zcompdump
if [[ (! -s ${zcompdump}.zwc) || ${zcompdump} -nt ${zcompdump}.zwc ]] ; then
    zcompile ${zcompdump}
fi
unset zcompdump
compinit -u
# End of lines added by compinstall
