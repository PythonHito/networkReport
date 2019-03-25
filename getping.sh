array=(www.just.edu.so www.clubedochoro.com.br www.rudgwicksteamshow.co.uk www.jamilin.com www.theworldsworstwebsiteever.com www.flamingotravel.com.vn www.chinahotelsreservation.com www.birdsvilleraces.com)
for ((c=0; c<8; c++)); do
	now=$(date +"%Y-%m-%d-%T")
	filename="${array[${c}]}|ping|$now.log"
	echo $filename
	ping -c 120 -n ${array[${c}]} > "$filename"
done
