#!/bin/bash

n=$((RANDOM%100));
echo "User No= " $n;

i=1;
start=1;
end=100;
while [ true ]
do
	mid=$(( ($start+$end)/2 ));
	if(( $mid==$n ))
	then
		echo "Number Found=" $mid;
		break;
	elif(( $n>$mid ))
	then
		echo "The No is " $mid "? No. Ok Continue..."
		start=$mid+1;
	else
		echo "The No is " $mid "? No. Ok Continue..."
		end=$mid-1;
	fi
done
