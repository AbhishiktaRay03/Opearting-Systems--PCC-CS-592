#!/bin/bash

num=$1
if  [ $num -lt 0 ]; then
	echo "Invalid input, please enter a positive number."
else
	echo -n "The common logarithm of $num is :"
	echo "scale=2; l($num)/l(10)" | bc -l
fi	
