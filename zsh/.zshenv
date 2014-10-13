typeset -U path
path=(
    /usr/local/bin
    $path
)

if which rbenv > /dev/null ; then
    eval "$(rbenv init -)"
fi
