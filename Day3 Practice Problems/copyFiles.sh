#!/bin/bash
#Move Files from One Folder to Respiective Folder

#declare name;
for file in `ls *.* | awk -F . '{print $1}'`
do
	mkdir $file;
	name=$file".txt";
	echo "Directory Created " $file " By file Name " $file".txt";
	mv $name $file/
	echo $name " Moved to Directory " $file
done
