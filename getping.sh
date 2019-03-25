array=(www.just.edu.so www.clubedochoro.com.br)
for ((c=0; c<2; c++)); do
	now=$(date +"%Y-%m-%d-%T")
	filename="${array[${c}]}|ping|$now.log"
	echo $filename
	ping -c 10 -n ${array[${c}]} > "$filename"
done
