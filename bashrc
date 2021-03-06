# exports =============================================================
export EDITOR=vim

if [ -d $HOME/.local/bin ]; then
    export PATH=$HOME/.local/bin:$PATH
fi

if [ -d $HOME/.local/env ]; then
    export WORKON_HOME=~/.local/env
    export VIRTUALENVWRAPPER_PYTHON=`which python`
    source_if_exists /usr/local/bin/virtualenvwrapper.sh
fi

# aliases =============================================================
alias ls='ls -G'
alias grep='grep --color=auto'
alias mkve="mkvirtualenv --no-site-packages --python=/usr/local/bin/python3" 
alias mkve2="mkvirtualenv --no-site-packages --python=/usr/bin/python2.7"

# additional scripts =================================================
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

# git completion =====================================================
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"

# colors ============================================================
export CLICOLOR=1
export LSCOLORS="Gxfxcxdxbxegedabagacad"
