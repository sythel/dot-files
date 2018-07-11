#!/bin/bash

# ----------------------------------------------------------------------
# shell print colors
# ----------------------------------------------------------------------
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls="ls --color=auto"
	alias la="ls -lash --color=auto"
	alias tree="tree -C"
	alias grep="grep --color=auto"
	alias fgrep="fgrep --color=auto"
	alias egrep="egrep --color=auto"
else
	alias la="ls -la"
fi

# ----------------------------------------------------------------------
# APACHE
# ----------------------------------------------------------------------
alias a2r="sudo apache2ctl restart"

# ----------------------------------------------------------------------
# MOVEMENT
# ----------------------------------------------------------------------
cdUp() { cd $(printf "%.0s../" $(seq 1 $1 )); } # multi cd up ``cd.. #``
quickSource() { source "$1/bin/activate" } # qsource a quicker source
alias 'cd..'=cdUp
alias qsource=quickSource
alias fucking="sudo"

# ----------------------------------------------------------------------
# FONTS
# ----------------------------------------------------------------------
alias font-rebuild="fc-cache -f -v"

# ----------------------------------------------------------------------
# DOCKER
# ----------------------------------------------------------------------
dstop() { docker stop $(docker ps -a -q) }
drm() { docker rm $(docker ps -a -q) }
# docker
alias dp="docker ps"
alias dstart="docker start"
alias dscale="docker scale"
alias drmf="dstop && drm"
# docker-compose
alias dcb="docker-compose build"
alias dcu="docker-compose up"
alias dcund="docker-compose up --no-deps" # Docker-Compose Up --No-Deps
alias dcr="docker-compose run"
alias dcrnd="docker-compose run --no-deps" # Docker-Compose Run --No-Deps
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
