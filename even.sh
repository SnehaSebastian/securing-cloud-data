read n
echo " enter a number"
if [ `expr $n % 2` = 0 ] then
echo " even number"
else
echo "odd number"
