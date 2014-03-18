#!/usr/bin/env bats

@test "virtualbox: invoking vboxmanage prints a 4.x version string" {
  found="$(vboxmanage -version | grep -o '^4\.*' | wc -m)"
 [[ $found != 0 ]]
}

@test "virtualbox: 4 vbox kernel modules loaded" {
# Example:
# vboxpci                23194  0
# vboxnetadp             25670  0
# vboxnetflt             27613  0
# vboxdrv               335365  4 vboxnetadp,vboxnetflt,vboxpci

  result="$(lsmod | grep vbox | wc -l)"
  [[ $result = 4 ]]
}

