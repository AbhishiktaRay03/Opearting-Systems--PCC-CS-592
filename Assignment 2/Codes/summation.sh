#!/bin/bash

sum=0
for i in $*
do
	if [ $i -lt 1 ]; then
		echo "Please enter only natural numbers."
		exit 1
	fi
	sum=`expr $sum + $i`

done
echo "The summation is $sum."

