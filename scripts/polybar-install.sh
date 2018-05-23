#!/bin/bash

sudo apt install -y \
	cmake \
	cmake-data \
	libcairo2-dev \
	libxcb1-dev \
	libxcb-ewmh-dev \
	libxcb-icccm4-dev \
	libxcb-image0-dev \
	libxcb-randr0-dev \
	libxcb-util0-dev \
	libxcb-xkb-dev \
	pkg-config \
	python-xcbgen \
	xcb-proto \
	libxcb-xrm-dev \
	libjsoncpp-dev \
	libasound2-dev \
	libpulse-dev \
	libmpdclient-dev \
	libiw-dev \
	libcurl4-openssl-dev \
	libxcb-cursor-dev

if ! polybar_loc="$(type -p polybar)" || [[ -z $polybar_loc ]]; then
  cd $HOME/.dotfiles/repos
  if [ -d "polybar" ]; then
    cd polybar; git pull
  else
    git clone --recursive https://github.com/jaagr/polybar
	cd polybar
  fi
  ./build.sh -f
fi
