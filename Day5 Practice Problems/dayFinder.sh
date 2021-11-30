#!/bin/bash
#Find Day on given Date, Month and Year

date=$1
month=$2
year=$3

y0=$(( $year - (14 - $month ) / 12 ));

echo "Y0=" $y0;

x=$(( $y0 + $y0 / 4 - $y0 / 100 + $y0 / 400 ));

echo "X=" $x;

m0=$(( $month + 12 * (( 14 - $month ) / 12) - 2));

echo "M0=" $m0;

d0=$(( ($date + $x + 31 * $m0 / 12) % 7));

echo "D0=" $d0;

case $d0 in
	0)
		echo "The Day on " $date"/"$month"/"$year " is SUNDAY";
	;;
	1)
		echo "The Day on " $date"/"$month"/"$year " is MONDAY";
	;;
	2)
		echo "The Day on " $date"/"$month"/"$year " is TUESDAY";
	;;
	3)
		echo "The Day on " $date"/"$month"/"$year " is WEDNESDAY";
	;;
	4)
		echo "The Day on " $date"/"$month"/"$year " is THURSDAY";
	;;
	5)
		echo "The Day on " $date"/"$month"/"$year " is FRIDAY";
	;;
	6)
		echo "The Day on " $date"/"$month"/"$year " is SATURDAY";
	;;
esac
