This script automatically generates up-to-date Archlinux pkgbuilds for 
google-musicmanager, based on the official Debian packages.  The PKGBUILD
itself can be found [on the AUR](https://aur.archlinux.org/packages/google-musicmanager/)

It is meant to be run from a cron job; it is safe to run it periodically,
as it will simply exit if the pkgbuild does not need to be updated.


