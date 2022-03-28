# Write a shell script that gets executed and displays the message either “Good Morning” or
# “Good Afternoon” or “Good Evening” depending upon time at which the user logs in. 
u=`whoami`
set -- `who`
for i in $*
do
user=$1
if [ $u =  $user ]
then
set -- `echo $4 | tr ":" " "`
h=$1
t=`date +%H`
echo $t
if [ $h -ge 4 ] && [ $h -lt 12 ]
then
echo " good mrng mr $u "
elif [ $h -ge 12 ] && [ $h - lt 16 ]
then
echo " good aftrnoon mr $u "
elif [ $h -ge 16 ] && [ $h - lt 19 ]
then
echo " good evng mr $u "
else

echo " good night mr $u "
fi
exit
else
shift 5
fi
done
