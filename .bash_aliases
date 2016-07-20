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

alias up=".."
alias up2="../.."
alias up3="../../.."
alias up4="../../../.."
