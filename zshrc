LANG=zh_CN.UTF-8

autoload colors
colors
for color in BLACK RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval $color='%{$fg_bold[${(L)color}]%}'
done

FINISH="%{$terminfo[sgr0]%}"

RPROMPT=$(echo "$RED%D{%m月%d日}$CYAN%D{%H:%M:%S}$FINISH")
PROMPT=$(echo "$RED%n$WHITE: $CYAN%~ $FINISH")

setopt no_nomatch

bindkey "\e[f" forward-word
bindkey "\e[b" backward-word
bindkey "\e[2~" overwrite-mode
bindkey "\e[3~" delete-char
bindkey "\e[5~" history-search-backward
bindkey "\e[6~" history-search-forward

if [[ "$TERM" == "xterm-256color" ]]; then
    bindkey "\e[H" beginning-of-line
    bindkey "\e[F" end-of-line
fi

export LD_LIBRARY_PATH=/usr/local/lib/gcc/6/:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=/usr/local/include/c++/6.3.0:$HOME/miniconda3/include/:$HOME/miniconda3/include/python3.5m/:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$C_INCLUDE_PATH:$CPLUS_INCLUDE_PATH

export PATH="/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

alias grep='grep --color=auto'

alias ls='ls --color=auto'
alias la='ls --color=auto -a'
alias ll='ls --color=auto -ahl'

alias vi='vim'

export PAGER='less -R -s -i'
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;32m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;34m'

export PATH="/usr/local/texlive/2016/bin/x86_64-darwin:$PATH"

alias cc='g++ -std=c++1z -Wall'

export PATH="/Users/wanglei/miniconda3/bin:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin

