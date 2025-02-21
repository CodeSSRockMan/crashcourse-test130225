#!/bin/bash
echo "Enter first number"
read numberA
echo "Enter second number"
read numberB
echo "Enter operation mode (+, -, *, /)"
read operationM

if [[ "$numberA" =~ ^[0-9]+$ && "$numberB" =~ ^[0-9]+$ ]]; then	
	case $operationM in
		+)
			echo $((numberA + numberB))
			;;
		-)
			echo $((numberA - numberB))
			;;
		\*)
			echo $((numberA * numberB))
			;;
		/)
			if [ $numberB -eq 0 ] ;then
				echo "Bad ending! You cannot divide by 0"
				exit 1
			fi
			let divRes=numberA/numberB
			echo $divRes
			;;
	esac
else
	echo "One or both numbers are the impostor ඞ (Input actual numbers for next time!)"
fi
