# Bash alias definitions.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ec='emacsclient -n'

alias eclipseN='sudo /home/eral/bin/eclipse/eclipse -vmargs -Xms256M -Xmx1024M -XX:PermSize=512M -XX:MaxPermSize=768M >> /dev/null 2>&1'

alias makej='make -j8'

# Aliases for directory control
alias p='pushd'
alias o='popd'
alias d='dirs -v'
alias dc='dirs -c'
#clear all but filetype
alias bgclearbuild='find . ! \( -name "*.bg*" -o -name "*.hcd" \) -delete'
