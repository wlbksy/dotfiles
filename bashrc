if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]\[\033[01;35m\]\D{%m-%d %T}\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

alias vi=vim

alias ls='ls -h --color=auto'
alias la='ls -a'
alias ll='la -l'

alias grep='grep --color=auto'

export PAGER='less -R -s -i'
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;32m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;34m'

export LD_LIBRARY_PATH=/usr/local/lib/gcc/6/:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=/usr/local/include/c++/6.3.0:$HOME/miniconda3/include/:$HOME/miniconda3/include/python3.5m/:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$C_INCLUDE_PATH:$CPLUS_INCLUDE_PATH

export PATH="/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export PATH="/usr/local/texlive/2016/bin/x86_64-darwin:$PATH"

alias cc='g++ -std=c++1z -Wall'

export PATH="/Users/wanglei/miniconda3/bin:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin
