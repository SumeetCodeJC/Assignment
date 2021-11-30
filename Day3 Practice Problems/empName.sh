#!/bin/bash
#List Employees whose BasePay greater than 10000
for data in `cat data.csv | awk '$4>10000 {print $2"   "$7}'`

do	echo $data 

done
