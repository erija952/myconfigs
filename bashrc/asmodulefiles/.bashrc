# A nicer xterm with scrollback and scrollbar and titles
alias xterm="xterm -sb -sl 10000  -T \"xterm@$HOST\" -n \"xterm@$HOST\" -e bash"

export HISTSIZE=100000
export HISTTIMEFORMAT="%c # "

umask 2

# Prompt
export PS1="[\u@\h \W]\$ "

GOT_MODULES=no

if [ -d ~/.modulefiles ]; then
    module use ~/.modulefiles
fi

if [ $GOT_MODULES = yes ] ; then
    module add ealerik-ws-env
    module add ealerik-general-env
fi

source $HOME/.bashrc_prompt
#source $HOME/.git-completion

alias ff='find . -name \!* -print'
alias ll='ls -la'
alias lg='ls -lagF \!* | less'
alias less='less -i'
alias l='less -i'
alias ec='emacsclient --no-wait'
alias ssh='ssh -X'


clean_ws() { sed -i 's/[\t ]*$//' $*; }

