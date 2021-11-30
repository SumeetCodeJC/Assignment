#!/bin/bash

randomCheck=$((RANDOM%2))

if(($randomCheck==0))
then
	echo "Head"
else
	echo "Tail"
fi
