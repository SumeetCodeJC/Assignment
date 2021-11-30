#!/bin/bash
#Print Last 4 IP Unique Addresses 
for ip in `cat access.log | awk '{print $16}' | uniq -cd | sort -r | head -4`
do
	echo $ip;
done
