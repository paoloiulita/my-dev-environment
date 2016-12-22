###################################
# This is to use npm without root #
###################################

NPM_PACKAGES="${HOME}/.npm-packages"

PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"



###########
# Colors! #
###########

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced



###########
# Prompt! #
###########

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "



######################
# Some handy aliases #
######################

alias ll="ls -Ghfla"
alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias ..="cd ../"
alias qfind="find . -name "
alias flushdns="dscacheutil -flushcache"
alias nods="find . -type f -name '*.DS_Store' -ls -delete"
alias npmls="npm -g ls --depth=0 "$@" 2>/dev/null"

alias http-server="http-server -a localhost -p 8000 -c-1"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222 http://localhost:4200"
