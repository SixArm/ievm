#!/bin/bash

name=IE8.WinXP.For.LinuxVirtualBox
parts=(part1.sfx part2.rar)

base_md5=https://az412801.vo.msecnd.net/md5/122013
base_build=https://az412801.vo.msecnd.net/vhd/VMBuild_20131127/VirtualBox/IE8_WinXP/Linux

for part in "${parts[@]}"; do
  wget -nc $base_build/$name.$part
  wget -nc $base_md5/$name.$part.txt
  diff <(md5sum $name.$part) <(cat $name.$part.txt) || echo "diff failed for $name.$part" && exit 1
done

./$name.part1.sfx

for part in "${parts[@]}"; do
  rm $name.$part
  rm $name.$part.txt
done
