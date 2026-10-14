

#




countcores() {
	nproc
}



if (( $(countcores) >= $1));then
	echo "Sufficient CPU cores"
else
	echo "Insufficient CPU cores"
fi


