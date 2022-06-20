total_time=0
count=1000

hosts=("google.com" "facebook.com" "baidu.com" "wikipedia.com" "twitter.com" )
host_size=${#hosts[@]}

for i in {1..1000}
do
	index=$(($RANDOM % $host_size))
	host=${hosts[$index]}
	echo Host = $host
	time=`dig $host | grep "Query time" | cut -d ' ' -f 4`
	total_time=$((total_time+time))
	echo Time = $time
done
echo Total Time  =  $total_time
echo Total Count = $count
echo Avg ms      = $((total_time/count))
