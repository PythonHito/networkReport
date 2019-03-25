array=(www.just.edu.so www.clubedochoro.com.br www.rudgwicksteamshow.co.uk www.jamilin.com www.theworldsworstwebsiteever.com www.flamingotravel.com.vn www.chinahotelsreservation.com www.birdsvilleraces.com)
for ((c=0; c<8; c++)); do
	now=$(date +"%Y-%m-%d-%T")
	filename="${array[${c}]}|route|$now.log"
	echo $filename
	traceroute -n ${array[${c}]} > "$filename"
done

