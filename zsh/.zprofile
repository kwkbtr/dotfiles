typeset -U path
path=(
    ~/dev/bin
    /usr/local/bin
    $path
)

if which rbenv > /dev/null ; then
    eval "$(rbenv init -)"
fi

if which nodebrew > /dev/null ; then
    path=($HOME/.nodebrew/current/bin $path)
fi

