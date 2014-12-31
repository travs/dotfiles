#!/usr/bin/env bash

# Load RVM, if you are using it
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Add rvm gems and nginx to the path
export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='zork'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='travs@github.com'

# Set my editor and git editor
export EDITOR="mvim"
export GIT_EDITOR='mvim'

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK


# Change this to your console based IRC client of choice.

export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh

# Begin my own stuff

alias scyt=/Users/travis/programming/null/songs/fullscript.sh

export JAVA_HOME=$(/usr/libexec/java_home)

export JNML_HOME=/Users/travis/programming/worm/neuroml_dev/jNeuroML/

PATH=$PATH:$JNML_HOME

##
# Your previous /Users/travis/.bash_profile file was backed up as /Users/travis/.bash_profile.macports-saved_2014-12-18_at_13:06:39
##

# MacPorts Installer addition on 2014-12-18_at_13:06:39: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

alias worm='source /Users/travis/programming/worm/bin/activate'
