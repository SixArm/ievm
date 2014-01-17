#!/bin/bash

# die(echo_text, exit_code)
#
# Example:
#
#    die "sorry" 1
#
die () {
  echo $1
  exit $2
}

# download files from modern ie,
# verify the checksum, and extract.
#
# Syntax:
#
#     download
#       modern_ie_base_build_url
#       modern_ie base_md5_url
#       name_of_package
#       part_list
#
# Example:
#
#   download \
#     "http://modern.ie/whatever/builds" \
#     "http://modern.ie/whatever/md5" \
#     "IE11.Win7.ForLinuxVirtualBox" \
#     "part1.sfx part2.rar part3.rar" \
#   
download () {
  base_build="$1"
  base_md5="$2"
  name="$3"
  parts=( $4 )

  echo "Download $name ..."

  for part in "${parts[@]}"; do
    echo "Part $part ..."
    wget -nc $base_build/$name.$part
    wget -nc $base_md5/$name.$part.txt
    actual_md5=`md5sum $name.$part | cut -c1-32`
    expect_md5=`cat $name.$part.txt | cut -c1-32`
    if [ "$expect_md5" != "$actual_md5" ]; then
	die "md5 check failure for $name" 1
    fi
  done

  echo "Extract ..."
  ./$name.part1.sfx

  echo "Done."

}
