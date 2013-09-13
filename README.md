Tar-Multi-Volume
================

Multi volume tar scripts for older tar versions.

New versions of tar (1.26 at least) support `--new-volume-script` and you should use this if available. If it's not available, Tar-Multi-Volume lets you achieve similar results.

Compressing
===========

`./compress.sh <tarball name prefix> <file to archive> <size of each volume in bytes>`

Example:
--------

`./compress.sh mytarname MyBigFile.mp4 1024000`

Uncompressing
=============

`./uncompress.sh <tarball name prefix>`

Example:
--------

`./uncompress.sh mytarname`
