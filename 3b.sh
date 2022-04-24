echo "enter a password"
read pass1
stty -echo
echo " confirm password"
stty -echo
read pass2

while [ "$pass1" != "$pass2" ]
do
clear
echo " -n password does not match"
echo " please re-enter the password to lock"
stty echo
read pass2
stty -echo
done
clear
echo "----------- Terminal Locked -------------"
echo "========================================="

echo "enter the password to unlock "
read pass3
stty echo
while [ "$pass1" != "$pass3" ]
do

echo "----- Terminal locked --------"
echo " password is incorrect "
echo " please enter password to unlock "
read pass3
stty echo
done
echo "---------- Unlocked -----------"



