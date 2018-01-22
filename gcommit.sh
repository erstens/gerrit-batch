#!/bin/bash
clear

while read line;do
    eval "$line"
done < global.conf

d=$workDir
msg=$1

dir=$(ls -l $d |awk '/^d/ {print $NF}')
for i in $dir
do
    echo -e "\033[36m -------------------$i--------------------"
    cd $workDir/$i 
    git add . 
    git commit -m $msg
    echo ''
    echo ''
done   
