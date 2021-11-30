#!/bin/bash

random=$1

case $random in

	0)
		echo "Zero";;
	1)
		echo "One";;
	2)
		echo "Two";;
	3)
		echo "Three";;
	4)
		echo "Four";;
	5)
		echo "Five";;
	6)
		echo "Six";;
	7)
		echo "Seven";;
	8)
		echo "Eight";;
	9)
		echo "Nine";;
	10)
		echo "Ten";;
	*)
		echo "Given Number must be from 0 To 10 "
esac
