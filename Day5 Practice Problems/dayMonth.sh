#!/bin/bash

month=$1
day=$2

echo $month
echo $day

if (($month>=3 && $month<=6))
then
	if(($month==3 && $day>=20))
	then
		echo 'True'
	elif(($month==4 && $day<=30))
	then
		echo 'True'
	elif(($month==5 && $day<=31))
	then
		echo 'true'
	elif(($month==6 && $day<=20))
	then
		echo 'True'
	else
		echo 'False'
	fi
else
	echo 'False'
fi
