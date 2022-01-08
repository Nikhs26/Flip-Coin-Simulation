#! /bin/bash

declare -A flipCoin
#read -p "How many times you want to flip coin " noOfTime

IS_HEAD=1
counter=0
headCount=0
tailCount=0
diff=0

while [ 1 ]
do
	flipCoinResult=$((RANDOM%2))
	if [ $flipCoinResult -eq $IS_HEAD ]
        then
		flipCoin[$counter]="Head"
		((headCount++))
        else
		flipCoin[$counter]="Tail"
		((tailCount++))
        fi
	if [[ ($headCount -eq 21) && ($tailCount -eq 21) ]]
	then
		echo "Match tie"
		counter=1
		continue
	elif [ $headCount -eq 21 ]
	then
		echo "HEAD won the match"
		break
	elif [ $tailCount -eq 21 ]
	then
		echo  "TAIL won the match"
		break
	elif [ $counter -eq 1 ]
	then
		diff=$(($headCount-$tailCount))
		diff=${diff#-}
		if [ $diff -eq 2 ]
		then
			echo "difference 2 point in between head and tail"
			break
		fi
	fi
done

echo "The number of times won the head: $headCount"
echo "The number of times won the tail: $tailCount"
