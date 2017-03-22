echo "Enter the no.of Elements"
read n
evens=0
odds=0
allsum=0
i=1
while [ $i -le $n ] 
do

	echo "Enter the number"
	read num
	c=`expr $num % 2`
	if [  $c -eq 0 ]
	then 
		evens=`expr $evens + $num`
	else
		odds=`expr $odds + $num`
	fi
	allsum=`expr $allsum + $num`
	i=`expr $i + 1`	
done
echo "Sum of even numbers = $evens"
echo "Sum of odd numbers = $odds"
echo "Sum of all numbers = $allsum"


