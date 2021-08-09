if [ -d /data/dev ]; then
    dev_data=/data/dev
elif [ -d /Volumes/data/dev ]; then
    dev_data=/Volumes/data/dev
else
    dev_data=$HOME/dev
fi

typeset -U path
path=(
    /usr/local/opt/unison@2.40/bin
    ~/.poetry/bin
    ~/dev/bin
    /usr/local/bin
    $path
)

if [ -d $dev_data ]; then
    path=(
        $dev_data/bin
        $dev_data/anyenv/bin
        $path
    )
    if which anyenv > /dev/null ; then
        export ANYENV_ROOT=$dev_data/anyenv
        export ANYENV_DEFINITION_ROOT=$ANYENV_ROOT/anyenv-install
    else
        export RBENV_ROOT=$dev_data/rbenv
        export PYENV_ROOT=$dev_data/pyenv
        export PLENV_ROOT=$dev_data/plenv
        export NODEBREW_ROOT=$dev_data/nodebrew
    fi
    export GOENV_GOPATH_PREFIX=$dev_data/go
    export YARN_CACHE_FOLDER=$dev_data/.yarncache
else
    NODEBREW_ROOT=~/.nodebrew
fi

if which anyenv > /dev/null ; then
    eval "$(anyenv init --no-rehash -)"
    if which pyenv > /dev/null ; then
        path=(
            $PYENV_ROOT/bin
            $path
        )
        eval "$(pyenv init --path)"
    fi
else
    if which rbenv > /dev/null ; then
        eval "$(rbenv init --no-rehash -)"
    fi

    if which pyenv > /dev/null ; then
        eval "$(pyenv init --no-rehash -)"
    fi

    if which goenv > /dev/null ; then
        eval "$(goenv init --no-rehash -)"
    fi

    if which plenv > /dev/null ; then
        eval "$(plenv init --no-rehash -)"
    fi

    if which nodebrew > /dev/null ; then
        path=($NODEBREW_ROOT/current/bin $path)
    fi
fi
