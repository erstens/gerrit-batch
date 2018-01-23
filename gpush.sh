#!/bin/bash
clear

./gcommit.sh $1

while read line;do
    eval "$line"
done < global.conf

d=$workDir

dir=$(ls -l $d |awk '/^d/ {print $NF}')
for i in $dir
do
    echo -e "\033[36m -------------------$i--------------------"
    cd $workDir/$i 
    branch=`git branch | grep "*"`
 
    git push origin HEAD:refs/for/${branch/* /}
    echo ''
    echo ''
done   
