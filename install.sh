#!/bin/sh

BIN_DIR=$HOME/bin
CONFIG_DIR=${XDG_CONFIG_HOME:-$HOME/.config}/google-musicmanager-pkgbuild

mkdir -p $BIN_DIR
mkdir -p $CONFIG_DIR

ln -sf google-musicmanager-pkgbuild.sh $BIN_DIR

ln -sf PKGBUILD.template $CONFIG_DIR
ln -sf google-musicmanager.install $CONFIG_DIR

echo "Installed to $BIN_DIR/google-musicmanager-pkgbuild.sh.  Remember to add a cronjob!"
