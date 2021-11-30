#!/bin/bash

#Inch to Feet Conversion
inch=42;
ft=$(( $inch / 12 ))
echo "Feet: " $ft;
echo "Inch: " $inch;

#Meter of 60x40 Meter Rectangular Plot
meter=$(echo | awk '{ print 60*40*0.3048 }')
echo "Plot Meter : " $meter;

#Acre of 25 Plot
acre=$(echo | awk '{ print ((60*40)/43650)*25}')
echo "25 Plot in Acres :" $acre;
