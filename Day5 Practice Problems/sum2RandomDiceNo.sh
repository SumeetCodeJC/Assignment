#!/bin/bash

diceNo1=$((RANDOM%6+1))
diceNo2=$((RANDOM%6+1))

#sum=`expr $diceNo1 + $diceNo2`;
sum=$(($diceNo1 + $diceNo2));
echo "Dice 1 No: " $diceNo1;
echo "Dice 2 No: " $diceNo2;
echo "Sum of Dice Numbers: " $sum;
