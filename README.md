# SixArm.com » IE VM » Internet Explorer Virtual Machines

This repo has scripts to download Microsoft Internet Explorer virtual machines based on Windows XP, Vista, 7, 8, and 8.1.

These virtual machines are suitable for development testing, quality assurance, user acceptance, and the like.

To learn more about this, visit the Microsoft Modern IE website at http://modern.ie.

This repo has our home-grown scripts for Linux VirtualBox. The Modern IE website provides many other versions you may want, such as Mac VMWare Fusion version.

Prereqs:

  * wget
  * md5sum

Example:

    bash IE10.Win7.For.LinuxVirtualBox.sh

The script does this:

  1. Downloads the various large IE VM files.
  2. Verifies the file checksums.
  3. Runs the .sfx self-extracting archive, which creates a new .ova file.
  4. Deletes the download files.

The result is a new file:

  * IE10 - Win 7.ova

To use this file, launch it (e.g. by double-clicking it) and this should launch VirtualBox.

The download files are very large, so you may want to delete them after the .ova file is created.

