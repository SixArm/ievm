#!/bin/bash
DIR=$(dirname $(readlink -f $0))
source $DIR/IEVM.sh

download \
  "https://az412801.vo.msecnd.net/vhd/VMBuild_20131127/VirtualBox/IE11_Win7/Linux" \
  "https://az412801.vo.msecnd.net/vhd/md5/122013" \
  "IE11.Win7.ForLinuxVirtualBox" \
  "part1.sfx part2.rar part3.rar part4.rar"
