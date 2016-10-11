#!/bin/bash

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls="ls --color=auto"
	alias la="ls -la --color=auto"
	alias tree="tree -C"
	alias grep="grep --color=auto"
	alias fgrep="fgrep --color=auto"
	alias egrep="egrep --color=auto"
else
	alias la="ls -la"
fi

# apache
alias a2r="sudo apache2ctl restart"

# movement
cdUp() { cd $(printf "%.0s../" $(seq 1 $1 )); } # multi cd up ``cd.. #``
quickSource() { source "$1/bin/activate" } # qsource a quicker source

alias 'cd..'=cdUp
alias qsource=quickSource
alias fucking="sudo"

# font rebuilding alias
alias font-rebuild="fc-cache -f -v"

# docker related
dstop() { "docker stop $(docker ps -a -q)" }
drm() { "docker rm $(docker ps -a -q)" }

alias drmf="dstop && drm"
alias dcb="docker-compose build"
alias dcu="docker-compose up"
alias dck="docker-compose kill"
alias dcp="docker-compose ps"
alias dcrm="docker-compose rm"
alias dcrmf="dck && dcrm"
# end of file
