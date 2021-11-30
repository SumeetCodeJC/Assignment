#!/bin/bash

HWin=0;
TWin=0;
while (($HWin<11 && $TWin<11))
do
	coinSide=$((RANDOM%2));
	if(( $coinSide%2==0 ))
	then
		((TWin++));
	else
		((HWin++));
	fi
done
	echo "Tail Comes "$TWin;
	echo "Head Comes "$HWin;
if (( $HWin>=11 ))
then
	echo "Head Side Win...";
else
	echo "Tail Side Win...";
fi
