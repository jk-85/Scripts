#!/bin/bash
# Delete first 16 seconds of a video-file

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
mkdir fertig
for i in *.mp4;
do
filename=$(basename -- "$i")
extension="${filename##*.}"
filename="${filename%.*}"
#echo $filename
#ffmpeg -i $i -ss 16 -vn -c:a copy $filename.m4a
#-vcodec copy -acodec copy
ffmpeg -i $i -ss 16 -vcodec copy -acodec copy fertig/$filename.mp4
done

IFS=$SAVEIFS
