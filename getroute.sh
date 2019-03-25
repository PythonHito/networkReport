array=(www.just.edu.so www.clubdochoro.com.br)
for ((c=0; c<2; c++)); do
	now=$(date +"%Y-%m-%d-%T")
	filename="${array[${c}]}|route|$now.log"
	echo $filename
	traceroute -n ${array[${c}]} > "$filename"
done

