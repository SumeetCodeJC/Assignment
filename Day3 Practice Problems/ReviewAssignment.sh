#!/bin/bash
#Review Assignment Move Log Files from One Folder to Respiective Folder with Date in its FileName
#declare name;
for file in `ls *.log | awk -F . '{print $1}'`
do
	mkdir $file;
	name=$file".log";
	echo "Directory Created " $file " By file Name " $file".txt";
	mv $name $file/$file$(date +%d%m%Y).txt
	echo $name " Moved to Directory " $file
done
