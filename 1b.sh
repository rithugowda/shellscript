if [ $# -ne 0 ]
then
	p=`echo $1 | tr "/" " "`
	for i  in $p
	do
		mkdir $i
		cd $i
	done
	echo "All directories created"
else
	echo "please enter the permission"
fi
