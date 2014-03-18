#!/bin/bash

if [[ -d "./bats" ]]; then
  echo "bats folder already exists. do nothing."
else
  echo "no previous install detected. installing bats."
  git clone https://github.com/sstephenson/bats.git
  cd bats
  sudo ./install.sh /usr/local
fi

