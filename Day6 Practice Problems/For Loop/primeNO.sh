#!/bin/bash

read -p "Enter Any Number: " n
i=1;
temp=1;
if(( $n!=1 ))
then
	for(( i=2; i<$n; i++ ))
	do
		if(( $n%$i==0 ))
		then
			temp=0;
			break;
		fi
	done
fi
if(( $temp==1 ))
then
	echo "Number " $n " is Prime Number";
else
	echo "Number " $n " is Not Prime No";
fi
