if [ $# -ne 0 ]
then
  
  

	 for i in $*
do

		if [ -e ~/mydir ]
		then
                         

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
		else
			mkdir ~/mydir
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
		fi
		
		done
		
		
else

	echo “please enter arguments”

fi
