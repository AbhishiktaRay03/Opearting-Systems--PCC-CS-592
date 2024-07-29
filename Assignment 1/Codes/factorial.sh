# read the number
read -p "Enter a number to calculate its factorial: " number
fact=1
#check for non-negative numbers
if  [ $number -lt  0 ]; then
	echo "PLease enter a non-negative integer"
else
	#calc factorial
	for ((i=1;i<=number;i++)); do
		fact=$((fact * i))
	done
fi
echo "The factorial of $number is $fact."
