#!/bin/bash

echo "download zsh..."
sudo apt-get update
sudo apt-get install -y zsh


# use the install.sh 

# if you cannot connect the github, you can modify the install.sh to connect the gitee version
sed -i 's|REPO=${REPO:-ohmyzsh/ohmyzsh}|REPO=${REPO:-mirrors/oh-my-zsh}|' install.sh
sed -i 's|REMOTE=${REMOTE:-https://github.com/${REPO}.git}|REMOTE=${REMOTE:-https://gitee.com/${REPO}.git}|' install.sh

# add the execute function 
chmod +x install.sh

# modify the .zshrc file，change the ZSH_THEME = ys(change the theme)
sed -i 's|ZSH_THEME=".*"|ZSH_THEME="ys"|' ~/.zshrc

# source the .zshrc file to make the changes take effect
source ~/.zshrc

echo "操作完成！"



# 切换bash chsh -s /bin/bash
# 切换zsh  chsh -s /bin/zsh
#
#

