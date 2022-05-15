
if [ $# -ne 0 ]
 then
 if [ -e $* ]
 then
 if [ -f $* ]
 then
 
 for i in $*
 do
 
if [ -e ~/mydir ]
then
 ls $*
 cat $*
 
 cp  $* ~/mydir
 else
 echo "Mydir is  not exits to do copy"
 fi
 done
 else
 echo " it is not a file "
 fi
 else
 echo " file does not exit"
 fi
 else
 echo “please enter arguments”
 
fi
