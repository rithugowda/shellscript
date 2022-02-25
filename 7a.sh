# Write a shell script that gets executed and displays the message either “Good Morning” or
# “Good Afternoon” or “Good Evening” depending upon time at which the user logs in. 
set -- `who`
g=$1
t=$4
set -- `echo $t | tr ":" " "`
h=$1
echo " user logged in terminal at: $h"
if [ $h -ge 4 ] && [ $h -lt 12 ]
then
echo "GOOD MORNING mr. $g"
elif [ $h -ge 12 ]  && [ $h -lt 16 ]
then
echo "GOOD afternoon mr.$g"
elif [ $h -ge 16  ] && [ $h -lt 19 ]
then
echo "GOOD evening mr. $g"
else
echo "GOOD night mr. $g"
fi
