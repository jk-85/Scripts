#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for i in *.mp4;
do
filename=$(basename -- "$i")
extension="${filename##*.}"
filename="${filename%.*}"
#echo $filename
#ffmpeg -i $i -ss 16 -vn -c:a copy $filename.m4a
#-vcodec copy -acodec copyffmpeg -i $i -ss 16 -vcodec copy -acodec copy $filename\_.mp4
done

IFS=$SAVEIFS
