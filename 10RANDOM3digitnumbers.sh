#!/bin/bash -x

declare -a randomArray
echo "Adding element to array "

for ((cnt=0;cnt<10;cnt++))
do
	nums[$cnt]=$((RANDOM%900 +100))
done
echo " The Array is "${nums[@]};

#nums=()
#nums+=($(((RANDOM%900)+100)))
#nums+=($(((RANDOM%900)+100)))
#nums+=($(((RANDOM%900)+100)))
#nums+=($(((RANDOM%900)+100)))
#nums+=($(((RANDOM%900)+100)));
#nums+=($(((RANDOM%900)+100)))
#nums+=($(((RANDOM%900)+100)))
#nums+=($(((RANDOM%900)+100)))
#nums+=($(((RANDOM%900)+100)))
#nums+=($(((RANDOM%900)+100)))

echo "Here are the array elements: ${nums[@]}"

largest=${nums[0]}
smallest=${nums[0]}
secondLargest='unset'
secondSmallest='unset'

for((i=1; i < ${#nums[@]}; i++))
do

  if [[ ${nums[i]} > $largest ]]
  then
    secondLargest=$largest
    largest=${nums[i]}
  elif (( ${nums[i]} < $largest )) && (( ${nums[i]} > $secondLargest ))
  then
    secondLargest=${nums[i]}
  fi


  if [[ ${nums[i]} < $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${nums[i]}
  elif [[ ${nums[i]} != $smallest && "$secondSmallest" = "unset" || ${nums[i]} < $secondSmallest ]] 
  then
    secondSmallest=${nums[i]}
  fi
done


echo "Second Largest value of an Unsorted Array is: $secondLargest"
echo "Second Smallest value of an Unsorted Array is: $secondSmallest"



for ((i=0;i<${#nums[@]};i++))
do
	for ((j=i+1;j<${#nums[@]};j++))
	do
		if [ ${nums[i]} -le ${nums[j]} ]
		then
			temp=${nums[i]};
			nums[i]=${nums[j]};
			nums[j]=$temp;
		fi
	done
done

echo "the second largest number in an array is ${nums[1]}";

echo "The Second Smallest number  in an array is ${nums[8]}";

echo "The Sorted Array is ${nums[@]}";
