#! /bin/bash

for entry in ../*
do
  localPath=$PWD/$entry
  name=${entry:3}
  echo "$name $localPath"
  sudo rm -rf ~/.config/"$name"
  ln -sf "$localPath" ~/.config/"$name"
done
