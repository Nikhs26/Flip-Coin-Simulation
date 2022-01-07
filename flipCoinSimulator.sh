#! /bin/bash

flipCoinResult=$((RANDOM%2))
IS_HEAD=1

if [ $flipCoinResult -eq $IS_HEAD ]
then
	echo "H"
else
	echo "T"
fi
