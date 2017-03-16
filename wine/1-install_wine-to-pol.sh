#!/bin/bash 

#Compile Wine 32-bit and 64-bit from source, separately by using a modified PKGBUILD script.
updpkgsums
makepkg

#Install compiled Wine files to their corresponding places in PlayOnLinux installation.
bash -c ./playonlinux-script/install-to-pol.sh

#Remove deprecated src & pkg folders
rm -R ./{src,pkg}

#Compiled tar.xz package is not "compatible" or as good as the Wine package compiled with the original PKGBUILD rules. Thus, we remove the created tar.xz file.
rm ./*.tar.xz

#Exit the script execution.
exit
