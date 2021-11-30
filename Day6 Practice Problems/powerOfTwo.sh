#!/bin/bash

n=$1;
i=1;
powerOfTwo=1;
while (( $i<=$n ))
do
	echo $powerOfTwo;
	powerOfTwo=$(( $powerOfTwo * 2 ));
	i=$i+1;
done
