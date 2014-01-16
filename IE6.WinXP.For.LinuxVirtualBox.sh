#!/bin/bash
name=IE6.WinXP.For.LinuxVirtualBox
for part in sfx; do
  wget -nc https://az412801.vo.msecnd.net/vhd/VMBuild_20131127/VirtualBox/IE6_WinXP/Linux/$name.$part
  wget -nc https://az412801.vo.msecnd.net/vhd/md5/122013/$name.$part.txt
  diff <(md5sum $name.$part) <(cat $name.$part.txt)
done
./$name.sfx
