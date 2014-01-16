#!/bin/bash
name=IE10.Win8.For.LinuxVirtualBox
for part in part1.sfx part2.rar part3.rar part4.rar part5.rar; do
  wget -nc https://az412801.vo.msecnd.net/vhd/VMBuild_20131127/VirtualBox/IE10_Win8/Linux/$name.$part
  wget -nc https://az412801.vo.msecnd.net/vhd/md5/122013/$name.$part.txt
  diff <(md5sum $name.$part) <(cat $name.$part.txt)
done
./$name.part1.sfx
