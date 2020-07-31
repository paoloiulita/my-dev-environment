# Path to your oh-my-zsh installation.
export ZSH=/Users/paolo/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Replace vim with nano
export EDITOR=nano

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(extract git-auto-fetch nvm)

source $ZSH/oh-my-zsh.sh

# User configuration

# Personal aliases

# A better file list
alias ll="ls -Ghfla"

# Always copy with verbose flag and warning for overwitten files
alias cp="cp -iv"

# Always move with verbose flag and warning for overwitten files
alias mv="mv -iv"

# Create intermediate folders and be verbose when creating new folders
alias mkdir="mkdir -pv"

# Go back quickly
alias ..="cd ../"

# Find things quickly
alias qfind="find . -name "

# Flush DNS cache
alias flushdns="dscacheutil -flushcache"

# Easy delete DS_Store files
alias deleteds="find . -type f -name '*.DS_Store' -ls -delete"

# List all NPM packages installed globally without the full dependancy tree
alias npmls="npm -g ls --depth=0 "$@" 2>/dev/null"

# Edit this file
alias zshconfig="nano ~/.zshrc"

# Reload the ZSH configuration
alias reloadzsh=". ~/.zshrc"
