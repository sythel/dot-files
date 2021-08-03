#!/bin/bash

# ----------------------------------------------------------------------
# shell print colors
# ----------------------------------------------------------------------
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls="ls --color=auto"
    alias la="ls -lah --color=auto"
    alias tree="tree -C"
    alias grep="grep --color=auto"
    alias fgrep="fgrep --color=auto"
    alias egrep="egrep --color=auto"
else
    alias la="ls -lah"
fi

# ----------------------------------------------------------------------
# APACHE
# ----------------------------------------------------------------------
alias a2r="sudo apache2ctl restart"

# ----------------------------------------------------------------------
# MOVEMENT
# ----------------------------------------------------------------------
cdUp(){
    cd $(printf "%.0s../" $(seq 1 $1));
}
quickSource() {
    . "$1/bin/activate"
}
alias 'cd..'=cdUp
alias qsource=quickSource

# ----------------------------------------------------------------------
# FONTS
# ----------------------------------------------------------------------
alias font-rebuild="fc-cache -f -v"

# ----------------------------------------------------------------------
# DOCKER
# ----------------------------------------------------------------------
dstop(){
    docker stop $(docker ps -a -q)
}
drm(){
    docker rm $(docker ps -a -q)
}
alias dp="docker ps"
alias dstart="docker start"
alias dscale="docker scale"
alias drmf="dstop && drm"
alias dcb="docker-compose build"
alias dcu="docker-compose up"
alias dcund="docker-compose up --no-deps"
alias dcr="docker-compose run"
alias dcrnd="docker-compose run --no-deps"
alias dcp="docker-compose ps"
alias dcstop="docker-compose stop"
alias dcstart="docker-compose start"
alias dcscale="docker-compose scale"
alias dck="docker-compose kill"
alias dcrm="docker-compose rm"
alias dcrmf="dck && dcrm"

# ----------------------------------------------------------------------
# CONNECTION RELATED
# ----------------------------------------------------------------------
alias show_ssh="netstat -tnpa | grep 'ESTABLISHED.*sshd'"

# ----------------------------------------------------------------------
# TREE PRINTING
# ----------------------------------------------------------------------
alias stree="tree -L 2"

# ----------------------------------------------------------------------
# MAKE CODE TEMPLATE FILE IN CURRENT DIR
# ----------------------------------------------------------------------
mkstarter(){
    echo "Mkstarter: make code template file: Params: $1 pwd: $PWD"
    # if param 1 is python3 make python3 in current dir
    case $1 in
        python3)
            cp ~/dot-files/starter_files/python3.py $PWD/starter.py
            ;;
        html)
            cp ~/dot-files/starter_files/starter.html $PWD/starter.html
            ;;
        *)
            echo "mkstarter: starter file for '$1' not found"
            ;;
    esac
}

# ----------------------------------------------------------------------
# GIT RELATED
# ----------------------------------------------------------------------
alias gbfg="java -jar ~/dot-files/bfg-1.13.0.jar"
alias githooks="scp -p -P 29418 wwinslow@gasgerrit01:hooks/commit-msg .git/hooks/"

# ----------------------------------------------------------------------
# VIM RELATED
# ----------------------------------------------------------------------
alias vib="vim -b"
