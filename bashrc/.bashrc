# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

color_prompt=yes

function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

if [ "$color_prompt" = yes ]; then
    PS1='\[\033[0;31m\]$(date +%H:%M)\[\033[00m\] ${debian_chroot:+($debian_chroot)}\[\033[01;30m\]\u:\[\033[01;34m\]\w\[\033[00m\] \[\033[01;35m\]$(parse_git_branch)\[\033[00m\]> '
else
    PS1='$(date +%H:%M) ${debian_chroot:+($debian_chroot)}\u@\h:\w $(parse_git_branch)\$ '
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
# install using sudo apt-get install bash-completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

## EXPORTS

export ECLIPSE_WORKSPACE=/home/eral/workspace
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/

######## Demo Nemo ##########
##export DEMONEMO_PRJ_ROOT=$ECLIPSE_WORKSPACE/demonemo/gumstix
##export DEMONEMO_LIB_DIR=$DEMONEMO_PRJ_ROOT/libraries

## Android
##export PATH=${PATH}:~/bin/android-sdk-linux/tools
##export PATH=${PATH}:~/bin/android-sdk-linux/platform-tools

## Git achievments: Add [achievement] \n upload = true to .gitconfig
##export PATH="$PATH:/home/eral/git-achievements"
##alias git="git-achievements" 
