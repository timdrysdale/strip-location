#/bin/bash
mkdir ./output 2>/dev/null
for f in ./*.mp4
do 
ffmpeg -i $f -metadata location="" -metadata location-eng="" -acodec copy -vcodec copy "./output/$f"
done
