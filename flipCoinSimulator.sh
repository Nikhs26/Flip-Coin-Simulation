#! /bin/bash

declare -A flipCoin
read -p "How many times you want to flip coin " noOfTime

IS_HEAD=1
counter=0
headCount=0
tailCount=0

while [ $counter -lt $noOfTime ]
do
	flipCoinResult=$((RANDOM%2))
	if [ $flipCoinResult -eq $IS_HEAD ]
        then
                echo "Head"
		flipCoin[$counter]="Head"
		((headCount++))
        else
                echo "Tail"
		flipCoin[$counter]="Tail"
		((tailCount++))
        fi
((counter++))
done

echo "The number of times won the head: $headCount"
echo "The number of times won the tail: $tailCount"
