total_time=0
count=1000
for i in {1..1000}
do
	time=`dig google.com | grep "Query time" | cut -d ' ' -f 4`
	total_time=$((total_time+time))
#	sleep 1	
done
echo Total Time  =  $total_time
echo Total Count = $count
echo Avg ms      = $((total_time/count))
