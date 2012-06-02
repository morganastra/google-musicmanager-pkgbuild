#!/bin/sh
# This script automates the creation of PKGBUILDs for google-musicmanager

RUN_DIR=`pwd`
OUT_DIR=/tmp/google-musicmanager-pkgbuild-`date +%Y.%m.%d.%H:%M`

mkdir $OUT_DIR
cd $OUT_DIR

cp $RUN_DIR/google-musicmanager.install .
cp $RUN_DIR/PKGBUILD.template .

wget https://dl.google.com/linux/direct/google-musicmanager-beta_current_i386.deb
wget https://dl.google.com/linux/direct/google-musicmanager-beta_current_amd64.deb

MD5_i386=`md5sum google-musicmanager-beta_current_i386.deb | sed -e 's/ .*//'`
MD5_amd64=`md5sum google-musicmanager-beta_current_amd64.deb | sed -e 's/ .*//'`

echo i386 md5sum: $MD5_i386 
echo amd64 md5sum: $MD5_amd64

ar x google-musicmanager-beta_current_i386.deb 

PKGVER=`tar xf control.tar.gz ./control -O | sed -ne 's/Version: //p' | sed -e 's/-/_/'`
echo pkgver: $PKGVER

cat PKGBUILD.template | sed -e "s/PKGVER/$PKGVER/" -e "s/MD5_amd64/$MD5_amd64/" -e "s/MD5_i386/$MD5_i386/" > PKGBUILD

makepkg --source

burp google-musicmanager-$PKGVER-1.src.tar.gz
