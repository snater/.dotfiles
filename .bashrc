#!/usr/bin/env bash

# Setup tab and window title functions for iterm2
# iterm behaviour: until window name is explicitly set, it'll always track tab title.
# So, to have different window and tab titles, iterm_window() must be called
# Source: http://superuser.com/a/344397
set_tab_name() {
    echo -e "\033]0;$@\007"
}

export LANGUAGE="en_EN.UTF-8"

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bakke'

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

export PATH="$PATH:$HOME/.bin"

# Load Bash It
source $BASH_IT/bash_it.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.cargo/bin:$PATH"

# No duplicates in history
export HISTCONTROL=ignoredups:erasedups  
export HISTSIZE=100000
export HISTFILESIZE=100000
# Append history instead of overriding 
shopt -s histappend
# Append history on every command
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
