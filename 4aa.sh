if [ $# -ge 1 ]
then
if [ $# -eq 2 ] 
then
cde=$2
else
cde= .
fi
file=`find ~ -iname $1`
if [ `echo $file | wc -c` -gt 1 ]
then
number=`ls -inum $file | grep -o ^[0-9]*`
cd $cde
find . -inum $number
else
echo " no such file"
fi
else
echo " provide filename"
fi
