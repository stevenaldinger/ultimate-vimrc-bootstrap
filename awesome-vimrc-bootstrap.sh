#!/bin/bash

# cloning awesome vimrc repo
[ -d "~/.vim_runtime" ] \
  && echo "~/.vim_runtime directory already exists, not cloning repository." \
  || echo 'git clone https://github.com/amix/vimrc.git ~/.vim_runtime' && \
       git clone https://github.com/amix/vimrc.git ~/.vim_runtime

echo 'sh ~/.vim_runtime/install_awesome_vimrc.sh'
sh ~/.vim_runtime/install_awesome_vimrc.sh

echo 'curl -Lo /tmp/hack-fonts.zip "https://github.com/chrissimpkins/Hack/releases/download/v2.020/Hack-v2_020-ttf.zip"'
curl -Lo /tmp/hack-fonts.zip "https://github.com/chrissimpkins/Hack/releases/download/v2.020/Hack-v2_020-ttf.zip"

echo 'mkdir -p /tmp/hack-fonts-unzipped'
mkdir -p /tmp/hack-fonts-unzipped

echo 'unzip /tmp/hack-fonts.zip -d /tmp/hack-fonts-unzipped'
unzip /tmp/hack-fonts.zip -d /tmp/hack-fonts-unzipped

echo 'mv /tmp/hack-fonts-unzipped/* ~/Library/Fonts/'
mv /tmp/hack-fonts-unzipped/* ~/Library/Fonts/

echo 'rm -rf /tmp/hack-fonts*'
rm -rf /tmp/hack-fonts*
