#!/bin/bash -x

for (( i=0; i<10; i++ ))
do
	randomNo[$i]=${RANDOM:0:3};
done

for (( i=0; i<10; i++ ))
do
	echo ${randomNo[$i]};
done

for (( i=0; i<10; i++ ))
do
	for (( j=$i+1; j<10; j++ ))
	do
		if (( ${randomNo[$i]} < ${randomNo[$j]} ))
		then
			temp=${randomNo[$i]};
			randomNo[$i]=${randomNo[$j]};
			randomNo[$j]=$temp;
		fi
	done
done

echo "Second Largest No= " ${randomNo[1]};
echo "Second Smallest No= " ${randomNo[9]};
