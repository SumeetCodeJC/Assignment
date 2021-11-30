#!/bin/bash
#Print 4 Frequently Used URLCount in Sorted Order
for link in `cat access.log | awk '{print $11}' | sort | uniq -cd | sort -r | head -4`
do
	echo $link;
done
