fil=$1
if [ -e $fil ]
then
set -- `ls -ld $fil`
echo " the generation time is $6 $7 $8"
else
echo "file doesnot exit"
fi

