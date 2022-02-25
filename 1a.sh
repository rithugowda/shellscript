# Write a shell script that takes a valid directory name as a argument recursively descend all
# the sub-directors, find the maximum length of any file in that hierarchy and writ the maximum
# value to the standard output. 
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

