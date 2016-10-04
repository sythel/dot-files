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
alias fucking="sudo"

# multi cd up ``cd.. #``
cdUp() {
	cd $(printf "%.0s../" $(seq 1 $1 ));
}
# qsource a quicker source
quickSource() {
	source "$1/bin/activate"
}

alias 'cd..'=cdUp

alias qsource=quickSource

# font rebuilding alias
alias font-rebuild="fc-cache -f -v"

