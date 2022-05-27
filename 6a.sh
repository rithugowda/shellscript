if [ $# -ne 0 ]
then
	if [ ! -e ~/mydir ]
	then
		mkdir ~/mydir
	fi
	if [ -e $1 ]
	then
		for i in $*
		do
			if [ `ls ~/mydir | grep $i* | wc -l` -ne 0 ]
			then
				echo file $i already exist
			else

				while [ `ls ~/mydir | grep $i* | wc -l` -eq 0 ]
				do
					ls $*
					cat $*
					cp  $* ~/mydir					
				done
				break
			fi		
		done
	else
		echo no such file
	fi
else
	echo “please enter arguments”
fi
