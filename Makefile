

.PHONY: all build test setup install

all: test build

test:
	bats ./tests/*

build:
	echo "build something!"

setup:
	./setup.sh

install:
	echo "installing something"
	apt-get -y install wget
