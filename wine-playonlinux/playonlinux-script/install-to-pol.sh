#!/bin/bash

#Grab package name & package version for PlayOnLinux & this script
PKGNAME=$(cat ../PKGBUILD |grep -m 1 pkgname | sed 's/^.*=//')
PKGVER=$(cat ../PKGBUILD |grep -m 1 pkgver | sed 's/^.*=//')

PKG=$PKGNAME-$PKGVER

#Create base directories for PlayOnLinux Wine versions
mkdir -p ./playonlinux/{linux-amd64/$PKG,linux-x86/$PKG}

#Copy compiled files from the pkg folder into right places
cp -R ../pkg/$PKGNAME/usr64/{bin,share,lib64} ./playonlinux/linux-amd64/$PKG/
cp -R ../pkg/$PKGNAME/usr32/{bin,share,lib,lib64} ./playonlinux/linux-x86/$PKG/

#Copy 32-bit wine & wine-preloader into 64-bit prefix bin folder.
cp ../pkg/$PKGNAME/usr32/bin/{wine,wine-preloader} ./playonlinux/linux-amd64/$PKG/bin/

#Copy compiled 32-bit libraries into 64-bit prefix.
cp -R ../pkg/$PKGNAME/usr32/lib ./playonlinux/linux-amd64/$PKG

#Create symbolic links for gecko & mono, as done with all PlayOnLinux Wine versions.
ln -s $HOME/.PlayOnLinux//wine/gecko/ ./playonlinux/linux-amd64/$PKG/share/wine/gecko
ln -s $HOME/.PlayOnLinux//wine/mono/ ./playonlinux/linux-amd64/$PKG/share/wine/mono

ln -s $HOME/.PlayOnLinux//wine/gecko/ ./playonlinux/linux-x86/$PKG/share/wine/gecko
ln -s $HOME/.PlayOnLinux//wine/mono/ ./playonlinux/linux-x86/$PKG/share/wine/mono

#Copy PlayOnLinux specific libraries to Wine folders
cp -R ./pol_libs/{lib,lib64} ./playonlinux/linux-amd64/$PKG/
cp -R ./pol_libs/lib ./playonlinux/linux-x86/$PKG/

#################################################
#FINAL STEP

#Copy Wine versions to PlayOnLinux folders
cp -R ./playonlinux/linux-amd64/$PKG $HOME/.PlayOnLinux//wine/linux-amd64/
cp -R ./playonlinux/linux-x86/$PKG $HOME/.PlayOnLinux//wine/linux-x86/

#Upgrade all PlayOnLinux Wine prefixes to use the compiled Wine version
for i in $HOME/.PlayOnLinux/wineprefix/*/playonlinux.cfg
    do 
        sed -i "s/VERSION=.*/VERSION=$PKG/g" $i
done

#Remove these folders from the script folder
rm -R ./playonlinux
