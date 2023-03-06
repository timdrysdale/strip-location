#/bin/bash
for f in ./*.jpg
do
exiftool -geotag= -EXIF= -tagsFromFile @ -exif:Orientation $f
done
