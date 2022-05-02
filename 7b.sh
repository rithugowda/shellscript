if [ $# -ge 2 ]
then
if [ -f $1 ]
then
	if [ $# -ne 0 ]
	then
		for fn in $*
		do
			if [ $fn = $1 ]
			then
				continue
			fi  
			for w in `cat $1`
			do

				lc=`grep -owi "$w"  $fn | wc -l`
				echo " $w is $lc times in $fn"
			done
		done
	else
		echo " enter a valid parameters "
	fi
else
	echo " enter valid file name"
fi
else
echo " please  enter two or more parameters"
fi
