#!/usr/bin/env bats

@test "linux: running 64-bit kernel" {
  result="$(uname -a)"
 [[ $result =~ ^.*x86_64* ]]
}
