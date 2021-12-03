#!/bin/bash -x


cnt1=0;
cnt2=0;
cnt3=0;
cnt4=0;
cnt5=0;
cnt6=0;

declare -A dice;
dice[1]=1;
dice[2]=2;
dice[3]=3;
dice[4]=4;
dice[5]=5;
dice[6]=6;

echo "${dice[6]}";
echo ${dice[@]};

for ((a=1;a<=60;a++))
do
	RollDice[$a]=$((RANDOM%6 + 1));
	echo "$a Time Dice Number is ${RollDice[a]}";

		if [ ${RollDice[a]} -eq ${dice[1]} ]
		then
			((cnt1++));
		elif [ ${RollDice[a]} -eq ${dice[2]} ]
		then	
			((cnt2++));
		elif [ ${RollDice[a]} -eq ${dice[3]} ]
		then	
			((cnt3++));	
		elif [ ${RollDice[a]} -eq ${dice[4]} ]
		then	
			((cnt4++));
		elif [ ${RollDice[a]} -eq ${dice[5]} ]
		then	
			((cnt5++));
		elif [ ${RollDice[a]} -eq ${dice[6]} ]
		then	
			((cnt6++));
		fi

	if [[ $cnt1 -eq 10 || $cnt2 -eq 10 || $cnt3 -eq 10 || $cnt4 -eq 10 || $cnt5 -eq 10 || $cnt6 -eq 10 ]]
	then
		break;
	fi

done	
echo "cnt1=$cnt1";
echo "cnt2=$cnt2";
echo "cnt3=$cnt3";
echo "cnt4=$cnt4";
echo "cnt5=$cnt5";
echo "cnt6=$cnt6";

declare -A dicecnt

dicecnt=([1]=$cnt1 [2]=$cnt2 [3]=$cnt3 [4]=$cnt4 [5]=$cnt5 [6]=$cnt6);
	echo "Dice count is ${dicecnt[*]}";
 max=1;
for keys in ${dicecnt[@]}
do
		if [ ${dicecnt[keys]} > $max ]
		then
			max=${dicecnt[keys]};
		fi
done
echo " Largest no .is  $max";

	if [ $cnt1 -eq 10 ]
	then 
		echo "The Maximum Reached Number is ${dice[1]}";
	elif [ $cnt2 -eq 10 ]
	then	
      echo "The Maximum Reached Number is ${dice[2]}";
   elif [ $cnt3 -eq 10 ]
   then
      echo "The Maximum Reached Number is ${dice[3]}";
   elif [ $cnt4 -eq 10 ]
   then
      echo "The Maximum Reached Number is ${dice[4]}";
   elif [ $cnt5 -eq 10 ]
   then
      echo "The Maximum Reached Number is ${dice[5]}";
   elif [ $cnt6 -eq 10 ]
   then
      echo "The Maximum Reached Number is ${dice[6]}";
   fi


#The Minimum Reached Number is ";

