#!/bin/bash
this_path=`pwd`
echo "当前目录: "${this_path}

link_file(){
    # 用法： link_file src dst
    echo "链接 ./"$1" 至 ~/"$2
    rm ~/$2 -rf
    ln -s ${this_path}/$1 ~/$2
}

link_file bashrc .bashrc
link_file zshrc .zshrc
link_file vimrc .vimrc
link_file vim .vim
link_file pip .pip
echo "配置完成"
