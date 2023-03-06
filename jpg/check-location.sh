#/bin/bash
for f in ./*.jpg
do
exiftool $f | grep GPS
done
