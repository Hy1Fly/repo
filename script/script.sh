#!/bin/bash
dpkg-scanpackages -m ./debs > ./Packages
gzip -c9 ./Packages > ./Packages.gz
bzip2 -c9 ./Packages > ./Packages.bz2
git add .
git commit -m "Update packages"
git push
