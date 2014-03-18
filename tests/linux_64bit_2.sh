#!/usr/bin/env bats

@test "linux: running 64-bit kernel" {
  run bash -c "uname -a | grep -o x86_64 | wc -m"
  echo "output: "$output
  echo "status: "$status
  [ "$status" -eq 0 ]
  [ "$output" -ne 0 ]
}
