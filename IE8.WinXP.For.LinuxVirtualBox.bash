#!/bin/bash
DIR=$(dirname $(readlink -f $0))
$DIR/IEVM.sh

download \
  "https://az412801.vo.msecnd.net/vhd/VMBuild_20131127/VirtualBox/IE8_WinXP/Linux" \
  "https://az412801.vo.msecnd.net/vhd/md5/122013" \
  "IE8.WinXP.ForLinuxVirtualBox" \
  "part1.sfx part2.rar"
