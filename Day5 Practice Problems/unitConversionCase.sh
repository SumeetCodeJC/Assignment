#!/bin/bash

echo "*** UNIT CONVERSION ***";
echo "1. Feet To Inch";
echo "2. Inch To Feet";
echo "3. Feet To Meter";
echo "4. Meter To Feet";
echo "5. EXIT";
read -p "Enter Your Choice: " choice
case $choice in
	1)
		read -p "Enter the Feet: " feet;
		inch=$(( $feet * 12 ));
		echo $feet " Feet =" $inch " Inches";
	;;
	2)
		read -p "Enter the Inches: " inch;
		feet=$(( $inch / 12 ));
		echo $inch " Inches = " $feet " Feet";
	;;
	3)
		read -p "Enter the Feet: " feet;
		meter=$(( $feet / 3 ));
		echo $feet " Feet = " $meter " Meters";
	;;
	4)
		read -p "Enter the Meter: " meter;
		feet=$(( $meter * 3 ));
		echo $meter " Meter = " $feet " Feet";
	;;
	5)
		echo "Thank You!!!";
	;;
	*)
		echo "Sorry. Invalid Choice";
	;;
esac
