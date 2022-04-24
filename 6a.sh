
if [ $# -eq 0 ]
 then
 echo “please enter arguments”
 
 fi
 if [ -f $* ]
 then
 for i in $*
 do
 dir=/home/rithesh/mydir
if [ -e $dir ]
then
 ls $*
 cat $*
 
 cp  $* $dir
 else
 echo "Mydir is  not exits to do copy"
 fi
 done
 else
 echo " it is not a file"
 fi
