for i in `ls`
do
r=`expr length $i`
if [ $r -ge 10 ]
then 
echo $i
fi
done
