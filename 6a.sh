
if [ $# -ne 0 ]
then


	for i in $*
	do

		if [ -e ~/mydir ]
		then


			if [ `ls ~/mydir | grep $i* | wc -l` -eq 0 ]
			then
				ls $i*
				cat $i*
				cp  $* ~/mydir
			else
				echo cant copy  $i is already exit in mydir
			fi
		else
			echo "Mydir is  not exits to do copy"
		fi
	done
else

	echo “please enter arguments”

fi
