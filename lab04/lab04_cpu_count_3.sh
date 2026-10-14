

#

if [ -z $1 ]; then
	echo "Usage lab04_cpu_count_2.sh [ MAX_NUM_CORES]"
	exit
fi


countcores() {
	nproc
}



if (( $(countcores) >= $1));then
	echo "Sufficient CPU cores"
else
	echo "Insufficient CPU cores"
fi


