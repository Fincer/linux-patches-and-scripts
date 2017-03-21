#!/bin/bash 

#Compile Wine 32-bit and 64-bit from source, separately by using a modified PKGBUILD script.
updpkgsums
makepkg

if [[ $(find ./ -type f -iname "*.tar.xz" | wc -l) -eq 1 ]]; then
#Install compiled Wine files to their corresponding places in PlayOnLinux installation.
    cd ./playonlinux-script/
    bash ./install-to-pol.sh
fi
    
#Remove deprecated src & pkg folders
cd ..
rm -fR ./{src,pkg}

#Compiled tar.xz package is not "compatible" or as good as the Wine package compiled with the original PKGBUILD rules. Thus, we remove the created tar.xz file.
rm ./*.tar.xz

#Exit the script execution.
exit
