#!/bin/bash
echo "Enter number"
read numberA

if ! [[ "$numberA" =~ ^[0-9]+$ ]]; then
    echo "The number is the impostor ඞ (Input a number next time!)"
    exit 1
fi

if (( $numberA % 2 !=0 )); then
	echo "Odd"
else
	echo "Even"
fi


