#!/bin/bash

no1=${RANDOM:0:2}
no2=${RANDOM:0:2}
no3=${RANDOM:0:2}
no4=${RANDOM:0:2}
no5=${RANDOM:0:2}

sum=$(( $no1 + $no2 + $no3 + $no4 + $no5))
m=5
avg=$(( $sum / 5 ))
echo "Number 1 : " $no1;
echo "Number 2 : " $no2;
echo "Number 3 : " $no3;
echo "Number 4 : " $no4;
echo "Number 5 : " $no5;
echo "Sum of 5 Random No : " $sum
echo "Average of 5 Random No : " $avg
