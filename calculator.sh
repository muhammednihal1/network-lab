if [ $# -ne 3 ]; 
then
echo "syntax is <$1> <no1><opr><no2>"
else
case $2 in
+)sum=`expr $1 + $3`;;
-)sum=`expr $1 - $3`;;
x)sum=`expr $1 \* $3`;;
/)sum=`expr $1 / $3 `;;
%)sum=`expr $1 % $3`;;
*)echo `invalid number `;;
esac
echo $sum
fi
