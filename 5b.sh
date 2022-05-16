d=`date +%d`
d=`expr $d + 0`
h=`cal | tr -d "[\137][\010]" | grep -wn "$d" | head -c 1`
if [ $d -gt 9 ]
then
	cal | tr -d "[\137][\010]" | sed  " $h s/$d/**/"
else
	cal | tr -d "[\137][\010]" | sed  " $h s/$d/*/"
fi
