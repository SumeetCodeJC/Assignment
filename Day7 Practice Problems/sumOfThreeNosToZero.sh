#!/bin/bash

numbers=(3 4 -7);

echo ${numbers[@]};

sum=0;

for i in ${numbers[@]}
do
	sum=$(( $sum + $i));
done

echo $sum;
