#!/bin/bash
cd $1

branch_name=$(git symbolic-ref -q HEAD)
branch_name=${branch_name##refs/heads/}
branch_name=${branch_name:-HEAD}

git push origin HEAD:refs/for/$branch_name
