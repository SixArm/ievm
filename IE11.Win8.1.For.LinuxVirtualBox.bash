#!/bin/bash
DIR=$(dirname $(readlink -f $0))
$DIR/IEVM.sh

download \
  "https://az412801.vo.msecnd.net/vhd/VMBuild_20131127/VirtualBox/IE11_Win8.1/Linux" \
  "https://az412801.vo.msecnd.net/vhd/md5/122013" \
  "IE11.Win8.1.ForLinuxVirtualBox" \
  "part1.sfx part2.rar part3.rar part4.rar"
