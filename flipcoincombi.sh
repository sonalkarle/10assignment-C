echo "Welcome"
#!/usr/bin/bash -x

declare -A singlet
flipTheCoin=1

function checkResult ()
{
	case $1 in
	0) singlet[head]=$(( ${singlet[head]} + 1 )) ;;
	1) singlet[tail]=$(( ${singlet[tail]} + 1 )) ;;
	*) echo "error" ;;
	esac
}

echo "Welcome To flipCoin simulator"



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
