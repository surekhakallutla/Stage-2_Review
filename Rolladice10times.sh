#!/bin/bash -x
cnt1=0;
cnt2=0;
cnt3=0;
cnt4=0;
cnt5=0;
cnt6=0;

declare -A dice;
for ((i=1;i<=6;i++))
do
	dice[$i]=$i;
done
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

declare -a dicecnt
	dicecnt=($cnt1 $cnt2 $cnt3 $cnt4 $cnt5 $cnt6);
	echo "Dice Count is ${dicecnt[@]}";

largest=${dicecnt[0]}
smallest=${dicecnt[0]}

for((i=0; i <${#dicecnt[@]}; i++))
do

  if [[ ${dicecnt[i]} -ge $largest ]]
  then
    largest=${dicecnt[i]}
	MaxDicenum=${!dicecnt[i]}
	
	fi


  if [[ ${dicecnt[i]} -le $smallest ]]
  then
    smallest=${dicecnt[i]}
	MinDicenum=${!dicecnt[i]}
	
  fi
done
echo "${!dicecnt[@]}";
echo "The Number that Reached Maximum $largest times is MaxDicenum"
echo "The Number that Reached Minimum $smallest times is MinDicenum"
