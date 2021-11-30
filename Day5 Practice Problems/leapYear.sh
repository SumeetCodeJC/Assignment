#!/bin/bash

leap=$1
if(($leap%4==0 && $leap%100!=0 || $leap%400==0))
then
	echo $leap 'Year is Leap'
else
	echo $leap "Not Leap"
fi
