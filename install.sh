#!/bin/sh

BIN_DIR=$HOME/bin
CONFIG_DIR=$XDG_CONFIG_HOME/google-musicmanager-pkgbuild

mkdir -p $BIN_DIR
mkdir -p $CONFIG_DIR

cp google-musicmanager-pkgbuild.sh $BIN_DIR
chmod +x $BIN_DIR/google-musicmanager-pkgbuild.sh

cp PKGBUILD.template $CONFIG_DIR
cp google-musicmanager.install $CONFIG_DIR

echo "Installed to $BIN_DIR/google-musicmanager-pkgbuild.sh.  Remember to add a cronjob!"





