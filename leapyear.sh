if [ $# -gt 1 ]; then
echo "Syntax is $0 or $0 <year>"
  exit 1
fi
if [ $# -eq 0 ]; then
year=`date +%Y`
else
year=$1
fi
if [ `expr $year % 400` -eq 0 ]; then
    echo "$year is a leap year"
elif [ `expr $year % 4` -eq 0  -a  `expr $year % 100` -ne 0 ]; then
    echo "$year is a leap year"
else
    echo "$year is not a leap year"
fi

