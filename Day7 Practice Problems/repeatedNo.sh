#!/bin/bash

index=0;

for (( i=1; i<=100; i++ ))
do
	if (( $i % 11 == 0 ))
	then
		repeatedDigit[$index]=$i;
		((index++));
	fi
done

echo ${repeatedDigit[@]};
