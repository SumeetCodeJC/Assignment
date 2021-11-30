#!/bin/bash

win=1;
loss=0;
bet=0;
gambling=100;
goal=200;


while ((1))
do
	status=$((RANDOM%3));
	case $status in
		0)
			#bet=$((RANDOM%$gambling));
			bet=$(($bet+1));
			echo "Bet "$bet;;
		1)
			gambling=$(($gambling+$bet));
			echo "Win "$gambling;
			bet=1;
			if [ $gambling -ge 200 ]
			then
				echo "Gambler Wins 200";
			break;
			fi
		;;
		2)
			gambling=$(($gambling-$bet));
			echo "Loss "$gambling;
			bet=1;
			if [ $gambling -le 0 ]
			then
				echo "Gambler is Lost";
			break;
			fi
		;;
	esac
done 
