# ~/.profile: executed by the command interpreter for login shells.
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PS1='\[\033[00;32m\]\u:\[\033[00;35m\]\w\[\033[00;36m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL=

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

