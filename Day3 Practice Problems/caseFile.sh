#!/bin/bash

for file in `ls | awk -F . '{print $2}'`
do
	case  $file in
	txt) echo 'File is TextFile' ;;
	log) echo 'File is LOG File' ;;
	sh) echo 'File is SHELL File' ;;
	*) echo 'Other Files' ;;
	esac
done
