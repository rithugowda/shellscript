if [ $# != " " ]
then
if [ -f $1 ]
then
cd `pwd`
link=`ls -l $1 | tr -s " " | cut -d " " -f 2 | head -c 3`

else
cd ..

link=`ls -l $1 | tr -s " " | cut -d " " -f 2 | head -c 3`
fi
fi
echo $link
