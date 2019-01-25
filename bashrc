if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]\[\033[01;35m\]\D{%m-%d %T}\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

alias ls='ls -h --color=auto'
alias la='ls -a'
alias ll='la -l'

alias grep='grep --color=auto'
alias less='less -R'

export PAGER='less -R -s -i'
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;32m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;34m'

export LD_LIBRARY_PATH=/usr/local/lib/gcc/8/:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=/usr/local/include/c++/8.2.0:$C_INCLUDE_PATH

export CPLUS_INCLUDE_PATH=$C_INCLUDE_PATH:$CPLUS_INCLUDE_PATH

export CC=/usr/local/bin/gcc-8
export CXX=/usr/local/bin/g++-8

export PATH="/usr/local/opt/openssl/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

alias cc='g++ -std=c++2a -Wall'
