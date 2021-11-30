#!/bin/bash 

for data in `cat data.csv | awk '{print $5}'`
do
	if(($data>=7000 && $data<=10000))
	then
		empName=`cat data.csv | grep $data | awk '{print $2}'`
		empOverPay=`cat data.csv | grep $data | awk '{print $5}'`
		echo "Employee Name : " $empName" Overtime Pay : "$empOverPay
	fi
done
