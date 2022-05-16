# Write a shell script that accepts filename as argument and display its creation time if file
# exist and if does not send output error message. 
fil=$1
if [ -e $fil ]
then
	set -- `ls -ld $fil`
	echo " the file modification is on $6 $7 at $8"
else
	echo "file doesnot exit"
fi
