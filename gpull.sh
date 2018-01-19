#!/bin/bash
clear
input=$1

ary=(/Users/wangao/Documents/idea/gerrit/gaosi/work/refactor /Users/wangao/Documents/idea/gerrit/gaosi/work/cooperate)

d=${ary[$input]}

dir=$(ls -l $d |awk '/^d/ {print $NF}')
for i in $dir
do
    echo -e "\033[36m ------$i"
    GIT_DIR=/Users/wangao/Documents/idea/gerrit/gaosi/work/refactor/$i/.git git pull
    echo ''
done   
