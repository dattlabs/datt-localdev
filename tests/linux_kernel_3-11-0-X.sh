#!/usr/bin/env bats

@test "linux: kernel version 3.11" {
  run bash -c "uname -a | grep -o '3\.11\.' | wc -l"
  [[ $found != 0 ]]
}
