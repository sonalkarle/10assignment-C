echo "Welcome"
declare -A doublet
flipTheCoin=1

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

echo "Welcome To flipCoin simulator"



while [ $flipTheCoin -le 20 ]
do
	random1=$(( RANDOM % 2 ))
	random2=$(( RANDOM % 2 ))
	checkResult $random1 $random2
	flipTheCoin=$(( $flipTheCoin + 1 ))
done

for key in ${!doublet[@]}
do
	statement=`echo | awk -v key="$key" -v value="${doublet[$key]}" '{ percent = (value / 20) * 100 } END { print key " is " percent "%" }'`
	echo "$statement"

done
