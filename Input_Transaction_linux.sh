#!/bin/bash

ls -Art <SOURCE> | tail -1 
#Give you the latest file in the directory

$(find `pwd` -name `ls -Art <SOURCE> | tail -1`) 
#Give you the absolute file of the latest file.

cp -p $(find `pwd` -name `ls -Art <SOURCE> | tail -1`) <DESTINATION> 
#Copies the files from source to destination!

#If you wish to remove the latest file in a directory named dir, and the file name doesn't contain a newline character, do this:

rm -i -- "$(LC_CTYPE=C ls -t dir | head -1)"