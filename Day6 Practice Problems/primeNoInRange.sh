#!/bin/bash

read -p "Enter the Starting Range Value: " start
read -p "Enter the Ending Range Value: " end

temp=1;
while(( $start<=$end ))
do
	if(( $start!=1 ))
	then
		for(( i=2; $i<$start; i++ ))
		do
			if(( $start%$i==0 ))
			then
				temp=0;
				break;
			fi
		done
	fi
	if(( $temp==1 ))
	then
		echo $start " Number is Prime";
	else
		temp=1;
	fi
	((start++));
done
