# google-musicmanager-pkgbuild

This script automatically generates up-to-date Archlinux pkgbuilds for
google-musicmanager, based on the official Debian packages.  The PKGBUILD
itself can be found [on the AUR](https://aur.archlinux.org/packages/google-musicmanager/)

## Installation

Simply clone the repository and run `install.sh`, which will link the script and its supporting files to the necessary locations.

Install the `burp` and `packer` packages if you don't already have them.

## Usage

`google-musicmanager-pkgbuild.sh`. Any arguments are passed on to `burp`. However if you are not the package maintainer (me) uploading to the AUR will fail.
