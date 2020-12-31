
#!/usr/bin/bash -x

##Flapping a coin to display Head or Tails
##Function generated
function checkResult ()
{
	if [ $1 -eq 0 ]
	then
		echo "Heads"
	else
		echo "Tails"
	fi
}
echo "Welcome To flipCoin simulator"

##Computation
flipTheCoin=y

while [ $flipTheCoin == y ]
do
	random=$(( RANDOM % 2 ))
	checkResult $random
read -p "do you wish to flip coin again? (y/n): " flipTheCoin

##Store the answer in dictionary
##Declare the dictionary
declare -A singlet
flipTheCoin=1
##define function
function checkResult ()
{
	case $1 in
	0) singlet[head]=$(( ${singlet[head]} + 1 )) ;;
	1) singlet[tail]=$(( ${singlet[tail]} + 1 )) ;;
	*) echo "error" ;;
	esac
}


#!/bin/bash x
##Create Doublet combination and save ans
##Declare the dictionary
declare -A doublet
flipTheCoin=1
##generate function
function checkResult ()
{
	case $1$2 in
	00) doublet[hh]=$(( ${doublet[hh]} + 1 )) ;;
	11) doublet[tt]=$(( ${doublet[tt]} + 1 )) ;;
	01) doublet[ht]=$(( ${doublet[ht]} + 1 )) ;;
	10) doublet[th]=$(( ${doublet[th]} + 1 )) ;;
	*) echo "error" ;;
	esac
}

##3_DoubletCombi_UC3
echo "Welcome To flipCoin simulator"


##Computation
while [ $flipTheCoin -le 20 ]
do

	random=$(( RANDOM % 2 ))
	checkResult $random
	flipTheCoin=$(( $flipTheCoin + 1 ))
done

echo "for start"
for key in ${!singlet[@]}
do
	echo "$key : ${singlet[$key]}"
##2_StoreinDictpercen_UC2

	random1=$(( RANDOM % 2 ))
	random2=$(( RANDOM % 2 ))
	checkResult $random1 $random2
	flipTheCoin=$(( $flipTheCoin + 1 ))
done

for key in ${!doublet[@]}
do
	statement=`echo | awk -v key="$key" -v value="${doublet[$key]}" '{ percent = (value / 20) * 100 } END { print key " is " percent "%" }'`
	echo "$statement"

##3_DoubletCombi_UC3

#!/bin/bash -x
##Create triplet combination
##Declare the dictionary
declare -A triplet
flipTheCoin=1
##generate function
function checkResult ()
{
	case $1$2$3 in
		000) triplet[hhh]=$(( ${triplet[hhh]} + 1 )) ;;
		001) triplet[hht]=$(( ${triplet[hht]} + 1 )) ;;
		010) triplet[hth]=$(( ${triplet[hth]} + 1 )) ;;
		100) triplet[thh]=$(( ${triplet[thh]} + 1 )) ;;
		110) triplet[tth]=$(( ${triplet[tth]} + 1 )) ;;
		011) triplet[htt]=$(( ${triplet[htt]} + 1 )) ;;
		101) triplet[tht]=$(( ${triplet[tht]} + 1 )) ;;
		111) triplet[ttt]=$(( ${triplet[ttt]} + 1 )) ;; 
	
	*) echo "error" ;; esac
}

echo "Welcome To flipCoin simulator for 50 flips"


##Computation
while [ $flipTheCoin -le 50 ]
do
	random1=$(( RANDOM % 2 ))
	random2=$(( RANDOM % 2 ))
	random3=$(( RANDOM % 2 ))
	checkResult $random1 $random2 $random3
	flipTheCoin=$(( $flipTheCoin + 1 ))
done


#!/usr/bin/bash -x
##Sort the single doublet and triplet combination and show the result
##Declare all disctionary
declare -A singlet
declare -A triplet
declare -A doublet
flipTheCoin=1

max=0
keyMax=h
##genrate function
function checkResult ()
{
	case $1 in
		0)   singlet[h]=$(( ${singlet[h]} + 1 )) ;;
		1)   singlet[t]=$(( ${singlet[t]} + 1 )) ;;
		00)  doublet[hh]=$(( ${doublet[hh]} + 1 )) ;;
		11)  doublet[tt]=$(( ${doublet[tt]} + 1 )) ;;
		01)  doublet[ht]=$(( ${doublet[ht]} + 1 )) ;;
		10)  doublet[th]=$(( ${doublet[th]} + 1 )) ;;
		000) triplet[hhh]=$(( ${triplet[hhh]} + 1 )) ;;
		001) triplet[hht]=$(( ${triplet[hht]} + 1 )) ;;
		010) triplet[hth]=$(( ${triplet[hth]} + 1 )) ;;
		100) triplet[thh]=$(( ${triplet[thh]} + 1 )) ;;
		110) triplet[tth]=$(( ${triplet[tth]} + 1 )) ;;
		011) triplet[htt]=$(( ${triplet[htt]} + 1 )) ;;
		101) triplet[tht]=$(( ${triplet[tht]} + 1 )) ;;
		111) triplet[ttt]=$(( ${triplet[ttt]} + 1 )) ;; 
		*) echo "error" ;; esac
}

echo "Welcome To flipCoin simulator for 50 flips"
##Computation
while [ $flipTheCoin -le 50 ]
do

	checkResult $(( RANDOM % 2 ))
	checkResult $(( RANDOM % 2 ))$(( RANDOM % 2 ))
	checkResult $(( RANDOM % 2 ))$(( RANDOM % 2 ))$(( RANDOM % 2 ))
	flipTheCoin=$(( $flipTheCoin + 1 ))
done

echo "***Singlet Values in Percentage : "

for key in ${!singlet[@]}
do
	 statement=`echo | awk -v key="$key" -v value="${singlet[$key]}" '{ percent = (value / 50) * 100 } END { print key " is " percent "%" }'`
	 echo "$statement"
done

echo "***Doublet Values in Percentage : "

for key in ${!doublet[@]}
do
	statement=`echo | awk -v key="$key" -v value="${doublet[$key]}" '{ percent = (value / 50) * 100 } END { print key " is " percent "%" }'`
	echo "$statement"

done


echo "***Triplet Values in Percentage : "

##5_Sortsingledoublettriplet_UC5
for key in ${!triplet[@]}
do
	statement=`echo | awk -v key="$key" -v value="${triplet[$key]}" '{ percent = (value / 50) * 100 } END { print key " is " percent "%" }'`
	echo "$statement"


##4_TripletCombi_UC4
done

done

echo "***sorted singlet result"

for key in "${!singlet[@]}"
do

	if [[ $max -lt ${singlet[$key]} ]]
	then
		max=${singlet[$key]}
		keyMax=$key
	fi
	printf '%s:%s\n' "$key" "${singlet[$key]}"

done | sort -t : -k 2n

echo "wining combination in singlet is  $keyMax : $max"

max=0
keyMax=0
echo "***sorted doublet result"

for key in "${!doublet[@]}"
do

	if [[ $max -lt ${doublet[$key]} ]]
	then
		max=${doublet[$key]}
		keyMax=$key
	fi

	printf '%s:%s\n' "$key" "${doublet[$key]}"
done | sort -t : -k 2n

echo "maximum wining combination in doublet is "$keyMax : $max

max=0
keyMax=0

echo "***sorted triplet result"

for key in "${!triplet[@]}"
do
	if [[ $max -lt ${triplet[$key]} ]]
	then
		max=${triplet[$key]}
		keyMax=$key
	fi

	printf '%s:%s\n' "$key" "${triplet[$key]}"
done | sort -t : -k 2n


echo "maximum wining combination in triplet is "$keyMax : $max
##5_Sortsingledoublettriplet_UC5
