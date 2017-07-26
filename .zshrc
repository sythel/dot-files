export DEFAULT_USER="$USER"
# Path to your oh-my-zsh installation.
export ZSH=/home/${DEFAULT_USER}/.oh-my-zsh

# Set name of the theme to load. Look in ~/.oh-my-zsh/themes/
ZSH_THEME="powerlevel9k/powerlevel9k"

export TERM="xterm-256color"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Custom Aliases ( first load bash_aliases )
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# --------------------------------------------------------------------------------
# POWER LEVEL 9k THEME
# --------------------------------------------------------------------------------
POWERLEVEL9K_MODE='awesome-patched'

# promt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv command_execution_time context os_icon)

# pwd/cur path/context prompt
POWERLEVEL9K_DIR_FOREGROUND='248'
POWERLEVEL9K_DIR_BACKGROUND='088'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='113'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='238'
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='220'
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='white'
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_DELIMITER='%F{red}..%F{black}'

# git/vcs prompt
POWERLEVEL9K_VCS_BACKGROUND='113'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='214'

# virtualenv prompt
POWERLEVEL9K_VIRTUALENV_BACKGROUND='238'
POWERLEVEL9K_VIRTUALENV_FOREGROUND='red'

# command_execution_time prompt
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

# vi mode prompt
POWERLEVEL9K_VI_INSERT_MODE_STRING="→"
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='green'
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='white'
POWERLEVEL9K_VI_COMMAND_MODE_STRING='\UE138'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='blue'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='white'
# ------------------------------------------------------------------------------
# zsh vi mode
# ------------------------------------------------------------------------------
bindkey -v
export KEYTIMEOUT=1
# ------------------------------------------------------------------------------

