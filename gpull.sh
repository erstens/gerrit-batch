#!/bin/bash
clear

while read line;do
    eval "$line"
done < global.conf

d=$workDir

dir=$(ls -l $d |awk '/^d/ {print $NF}')
for i in $dir
do
    echo -e "\033[36m -------------------$i--------------------"
    cd $workDir/$i 
    git pull   
    echo ''
    echo ''
done   
