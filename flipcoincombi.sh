echo "Welcome"
#!/usr/bin/bash -x

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


flipTheCoin=y

while [ $flipTheCoin == y ]
do
	random=$(( RANDOM % 2 ))
	checkResult $random
read -p "do you wish to flip coin again? (y/n): " flipTheCoin
done
