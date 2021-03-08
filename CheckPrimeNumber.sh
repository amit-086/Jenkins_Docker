#!/bin/bash
number=$1
numberOfArguments=$#
Usage() {
	echo "Input is not valid, Please provide a valid one !"
	echo "Usage : $0 <a positive number>"
	exit 1
}
CheckError() {
	if [[ $numberOfArguments -ne 1 ]]
	then
		Usage
	elif [[ ! $number =~ ^[0-9]+$ ]] || [[ $number -le 0 ]]
	then
		Usage
	fi
}
CheckPrimeNumber() {
	isPrime=1
	for ((iterator=2; iterator <= $(( number / 2 )); iterator++))
	do
		if [ $(( number % iterator )) -eq 0 ]
		then
			isPrime=false
			break
		fi
	done
	
	if [[ $isPrime -eq 1 ]]
	then
		echo "$number IS PRIME"
	else
		echo "$number IS NOT PRIME"
	fi
}

#CheckError
CheckPrimeNumber
