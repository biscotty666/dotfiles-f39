# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

export PATH
export RESTIC_PASSWORD_FILE=/home/biscotty/.config/restic/restpass
export NIXPKGS_ALLOW_UNFREE=1
export EDITOR=/usr/bin/vim

alias cd='z'
alias vi='vim'
alias lal='ls -al'
alias la='ls -a'
alias cat='bat'
alias ananav='anaconda-navigator'
alias nnn='/home/biscotty/.local/bin/nnn'
alias gdu="gdu -I '.*easydata.*'"
alias ls='lsd'
alias zel='zellij'

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/biscotty/.config/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/biscotty/.config/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/biscotty/.config/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/biscotty/.config/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(zoxide init bash)"
# eval "$(atuin init bash)"
