if [ $# -eq 3 ]
then
	if [ -f $1 ]
	then
		l=`wc -l $1 | cut -d " " -f 1`
		if [ $2 -le $l -a $3 -le $l -a $2 -le $3 -a $2 -gt 0 -a $3 -gt 0 ]
		then
			head -n $3 $1 | tail -n +$2
		else
			echo "Enter valid file "
		fi
	else
		echo "Enter file name proper"
	fi
else
	echo "Usage:FileName StartingLine and EndLine"
fi
