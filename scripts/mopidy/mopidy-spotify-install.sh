#!/bin/bash

if ! sudo apt install -y mopidy-spotify
then
  wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
  sudo cp mopidy.list /etc/apt/sources.list.d
  sudo apt update
  sudo apt install mopidy-spotify
fi
