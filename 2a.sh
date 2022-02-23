f1=$1
f2=$2
if [ -e $f1 ]
    then
    set -- `ls -dl $f1`
    filpr1=$1
    else
    echo "file doesnot exist"
    exit
fi
if [ -e $f2 ]
    then
    set -- `ls -dl $f2`
    filpr2=$1
    else
    echo "file doesnot exist"
    exit
fi
if [ "$filpr1" = "$filpr2" ]
    then
       echo "file permissions are identical"
       echo "permisions is $filpr1"
     
   else
        echo "file permissions are not identical"
        echo "file permision of $f1 are $filpr1"
        echo "file permision of $f2 are $filpr2"
   fi
