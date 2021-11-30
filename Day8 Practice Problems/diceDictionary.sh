#!/bin/bash -x

declare -A diceDictionary;
one=0;
two=0;
three=0;
four=0;
five=0;
six=0;
while (( 1 ))
do
	diceRoll=$((RANDOM%6+1));
	case $diceRoll in
		1)
			((one++));
			diceDictionary["ONE"]=$one;
		;;
		2)
			((two++));
			diceDictionary["TWO"]=$two;
		;;
		3)
			((three++));
			diceDictionary["THREE"]=$three;
		;;
		4)
			((four++));
			diceDictionary["FOUR"]=$four;
		;;
		5)
			((five++));
			diceDictionary["FIVE"]=$five;
		;;
		6)
			((six++));
			diceDictionary["SIX"]=$six;
		;;
	esac
	if (( $one > 9 || $two > 9 || $three > 9 || $four > 9 || $five > 9 || $six > 9 ))
	then
		break;
	fi
done

max=${diceDictionary["ONE"]};
maxkey=0;
min=${diceDictionary["ONE"]};
minkey=0;

for data in ${!diceDictionary[@]}
do
	echo "Dice with " $data " Reached " ${diceDictionary[$data]};
	if (( $max < ${diceDictionary[$data]} ))
	then
		max=${diceDictionary[$data]};
		maxkey=$data;
	fi

	if (( $min > ${diceDictionary[$data]} ))
	then
		min=${diceDictionary[$data]};
		minkey=$data;
	fi
done
echo $maxkey " : " $max;
echo $minkey " : " $min;
