#!/bin/sh

export C9_FULLNAME=
export C9_HOSTNAME=
export C9_EMAIL=
export C9_USER=
export C9_PROJECT=
export C9_PID=
export C9_UID=

export C9_PORT=8080
export C9_IP=0.0.0.0
export C9_SHARED=/mnt/shared

export PATH=/mnt/shared/bin:$HOME/workspace/node_modules/.bin:$HOME/bin\
:/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/sbin:/usr/local/bin\
:/bin/mnt/shared/sbin:/opt/gitl:/opt/go/bin:/mnt/shared/c9/app.nw/bin

export HGUSER=$C9_FULLNAME
export EMAIL=$C9_EMAIL
export PORT=$C9_PORT
export IP=$C9_IP
export PYTHONPATH=$PYTHONPATH:$HOME/lib/python/site-packages
export GEM_PATH=$GEM_PATH:/mnt/shared/lib/ruby

export GOROOT=/usr/local/go
export METEOR_IP=$IP
export METEOR_PORT=$PORT

_xdgopen() {
    if [ -e "$@" ]; then
        c9 "$@"
        return
    fi
    command xdg-open "$@"
}

_gnomeopen() {
    if [ -e "$@" ]; then
        c9 "$@"
        return
    fi
    command xdg-open "$@"
}

export -f _xdgopen _gnomeopen
alias xdg-open=_xgdopen
alias gnome-open=_gnomeopen
alias open=c9
