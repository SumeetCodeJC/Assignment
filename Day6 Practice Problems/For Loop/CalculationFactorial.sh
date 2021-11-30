#!/bin/bash

read -p "Enter the Number to Calculate Factorial: " n
fact=1;
seq=1;
for(( i=1; i<=$n; i++ ))
do
	fact=$(($fact*$i));
done

echo "Factorial of " $n " is " $fact
