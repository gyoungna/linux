#!/bin/bash

echo "enter two input:"
read num1 num2


for((;;));
do
	r1=${num1#-}
	r2=${num2#-}
	r1=${r1//[0-9]/}
	r2=${r2//[0-9]/}
	if [ -z "$num1" -o -z "$num2" -o -n "$r1" -o -n "$r2" ]
	then
		echo "there is invalid input value. Please enter two input one more: "
		read num1 num2
	elif [ ${num1} -le 0 -o ${num2} -le 0 ]
	then
		echo "there is invalid input value. Please enter two input one more:"
		read num1 num2
	else 
		break	
	fi
done

for((i=1;i<=${num1};i++));
do
	for((j=1;j<=${num2};j++));
	do
		result=`expr $i \* $j`
		echo -n "${i}*${j}=${result} "
	done
	echo
done
exit 0;
