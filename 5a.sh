fil=$1
if [ -e $fil ]
then
set -- `ls -ld $fil`
echo " the file modification is on $6 $7 at $8"
else
echo "file doesnot exit"
fi

