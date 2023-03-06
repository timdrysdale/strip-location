#/bin/bash
mkdir ./output 2>/dev/null
for f in ./output/*.mp4
do
	ffprobe $f 2>&1 | grep location

done
