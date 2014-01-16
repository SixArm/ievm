#!/bin/bash
name=IE8.WinXP.For.LinuxVirtualBox
for part in part1.sfx part2.rar; do 
  wget -nc https://az412801.vo.msecnd.net/vhd/VMBuild_20131127/VirtualBox/IE8_WinXP/Linux/$name.$part
  wget -nc https://az412801.vo.msecnd.net/vhd/md5/122013/$name.$part.txt
  diff <(md5sum $name.$part) <(cat $name.$part.txt)
done
./$name.part1.sfx
