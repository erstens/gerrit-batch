#!/bin/bash
clear

cd $1
cd ..
d=$(pwd)
workDir=$(pwd)
echo $d
dir=$(ls -l $d |awk '/^d/ {print $NF}')
for i in $dir
do
    echo -e "\033[36m -------------------$i--------------------"
    cd $workDir/$i 
    git pull   
    echo ''
    echo ''
done   
