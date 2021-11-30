#!/bin/bash -x

for (( i=0; i<10; i++ ))
do
	randomNo[$i]=${RANDOM:0:3};
done

for (( i=0; i<10; i++ ))
do
	echo ${randomNo[$i]};
done

small=${randomNo[0]};
large=${randomNo[0]};

for (( i=0; i<10; i++ ))
do
	if (( ${randomNo[$i]} < small ))
	then
		small=${randomNo[$i]};
	fi
	if (( ${randomNo[$i]} > large ))
	then
		large=${randomNo[$i]};
	fi
done

sec_small=${randomNo[0]};
sec_large=${randomNo[0]};

for (( i=0; i<10; i++ ))
do
	if (( ${randomNo[$i]} < sec_small && ${randomNo[$i]}!=small ))
	then
		sec_small=${randomNo[$i]};
	fi
	if (( ${randomNo[$i]} > sec_large && ${randomNo[$i]}!=large ))
	then
		sec_large=${randomNo[$i]};
	fi
done

echo "Second Smallest No= " $sec_small;
echo "Second Large No= " $sec_large;
