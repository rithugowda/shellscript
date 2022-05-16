echo "enter the user name "
read usr
tuser=`whoami`
if [ "$tuser" = "$usr" ]
then
	tm=`who | tr -s " " | head -1 | cut -d " " -f4`
	uhr=`echo $tm | cut -d ":" -f1`
	umin=`echo $tm | cut -d ":" -f2`
	shr=`date "+%H"`
	smin=`date "+%M"`
	
	h=`expr $shr - $uhr`
	m=`expr $smin - $umin`
	echo "user name : $usr"
	echo "login period : $h Hours: $m Minute"
else
	echo "Invalid User"
fi
