#!/bin/bash
echo "*** Converting between the different temperature scales ***"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
read -p "Select your choice (1-2) : " choice

function CtoF()
{
	Celcius=$1
	Faran=$(( 9 * ( $Celcius / 5 ) + 32 ));
	echo "Fahrenheit : " $Faran;
}

function FtoC()
{
	Fahran=$1
	Celcius=$(( ($Fahran - 32) * 5 / 9  ));
	echo "Celcius : " $Celcius;
} 
case $choice in
	1)
		read -p "Enter the Temprature in Celcius: " c
		if (( $c >= 0 && $c <= 100 ))
		then
			CtoF $c
		else
			echo "Please Enter the Temprature Between Boiling Point";
		fi
	;;
	2)
		read -p "Enter the Temprature in Fahrenheit: " f
		if (( $f >= 32 && $f <= 212 ))
		then
			FtoC $f
		else
			echo "Please Enter the Temprature Between Boiling Point";
		fi
	;;
	*)
		echo "Wrong Input";
	;;
esac
