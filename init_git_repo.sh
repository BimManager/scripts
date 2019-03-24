#!/bin/bash
# init git repo

if [ $# -ne 3 ]
then
   echo "usage: user email repo_name"
else
    user=$1
    email=$2
    name=$3

    curl -u $user https://api.github.com/user/repos -d '{"name":"'"$name"'"}'
    
    echo $name > README.md
    git init

    git config --local user.name $user
    git config --local user.email $email
    
    git add README.md
    git commit -m "git repo initialised"
    git remote add origin https://github.com/$user/$name
    git push -u origin master
fi
    

