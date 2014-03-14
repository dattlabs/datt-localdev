

.PHONY: all build test setup

all: test build

test:
	bats ./tests/*

build:
	echo "build something!"

setup:
	./install-unit-testing.sh