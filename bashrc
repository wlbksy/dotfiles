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

export LD_LIBRARY_PATH=/usr/local/lib/gcc/10/:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=/usr/local/include/c++/10.2.0:$C_INCLUDE_PATH

export CC=/usr/local/bin/gcc-10
export CXX=/usr/local/bin/g++-10

export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

export PATH=~/miniconda3/bin:$PATH

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
