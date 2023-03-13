#!/bin/bash
#check if the nodeJS is already installed
if [ $(cat ~/.zshrc | grep "node" | wc -l) -gt 0 ]
then
    printf "\033[0;32m node already installed\033[0m\n"
    exit 0
fi
#ask the user where to install the nodeJS

read -p "Do you want to install node file~157mb on goinfre? (y/n) " -n 1 -r
if [[ ! $REPLY =~ ^[nN]$ ]]
then
    echo 'export PATH="$PATH:$HOME/goinfre/node/bin"' >> ~/.zshrc
    cd $HOME/goinfre
else
    echo 'export PATH="$PATH:$HOME/node/bin"' >> ~/.zshrc
    cd $HOME
fi
curl https://nodejs.org/dist/v18.15.0/node-v18.15.0-darwin-x64.tar.gz -o node-v18.15.0-darwin-x64.tar.gz
printf "\033[0;31m please wait while downloading\033[0m\n"
tar -xzf node-v18.15.0-darwin-x64.tar.gz -o node-v18.15.0-darwin-x64
mv node-v18.15.0-darwin-x64 node
rm -rf node-v18.15.0-darwin-x64.tar.gz\
printf "\033[0;32m nodeJS installed\033[0m\n"

#if you wanna delete the node file please go to the (goinfree or $HOME ) and delete the "node" file then got to your .zshrc and delete the line that contains "XXX/node/bin"