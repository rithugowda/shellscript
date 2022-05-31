if [ $# -ge 1 ]
then
	if [ ! -e ~/mydir ]
	then
		mkdir ~/mydir
	fi 

	for k in $*
	do 
		if [ -f $k ]
		then 

			if [ `ls ~/mydir | grep $k* | wc -l` -ne 0 ]

			then

				ls $k
				echo "========================="
				cat $k
				echo "========================="
				echo $k exist in mydir
				continue
			fi    		      			

			ls $k
			echo "========================="
			cat $k
			echo "========================="
			cp $k ~/mydir
		else
			echo No file with pattern $k  
		fi
	done
	exit
else
	echo enter the pattern
fi
