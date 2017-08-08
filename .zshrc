
export TERM="xterm-256color"
export PATH=/usr/local/bin:$PATH
export PATH=/home/connxus/bin:$PATH

#Terminal Tasks
alias k='clear'
alias e='exit'
alias l="ls -F -G -lah"
alias ll="ls -l"
alias la="ls -a"
alias lsd='ls -ld *(-/DN)'
alias md='mkdir -p'
alias rd='rmdir'
#Common Destinations
alias w='cd ~/Documents/Wyncode'
#Applications
alias chrome= 'exec /usr/bin/google-chrome-stable'
alias pk='pulseaudio -k'
alias pd='pulseaudio -D'
#git
alias g="git"
alias gcl="git clone"
alias gst="git status"
alias gl="git pull"
alias gp="git push"
alias gpom="git push origin master"
alias gd="git diff"
alias gcm="git commit -m"
alias gc="git commit -v"
alias gca="git commit -v -a"
alias gb="git branch"
alias gba="git branch -a"
alias gcam="git commit -am"
alias gbb="git branch -b"
alias ga="git add"
alias gphm="git push heroku master"
alias gch="git checkout"
#rspec
alias rsp='rspec -c'
#Finder
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
#rails
alias rs='rails server'
alias bashprofile='atom ~/.zshrc'
alias startguard='bundle exec guard'

LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/connxus/.oh-my-zsh

HOSTNAME=$HOST

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

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
plugins=(git github rails heroku )

# Import colorscheme from 'wal'

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
# function gi(rails) { curl -L -s https://www.gitignore.io/api/$@ ;}

 POWERLEVEL9K_MODE='powerline'

# Disable dir/git icons
 POWERLEVEL9K_HOME_ICON=''
 POWERLEVEL9K_FOLDER_ICON=''
  DISABLE_AUTO_TITLE="true"

 POWERLEVEL9K_VCS_GIT_ICON=''
 POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
 POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
 POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
 POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
 POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

 POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
 POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'#
 POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

 POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir vcs)
 POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs virtualenv rbenv rvm time)

 POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
 POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

 POWERLEVEL9K_PROMPT_ON_NEWLINE=true
 POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m.%y}"

 POWERLEVEL9K_STATUS_VERBOSE=false
 export DEFAULT_USER="$USER"
source  ~/powerlevel9k/powerlevel9k.zsh-theme

(wal -r &)
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
