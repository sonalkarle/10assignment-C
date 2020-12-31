
#!/usr/bin/bash -x
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
done
