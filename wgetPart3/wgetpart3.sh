now=$(date +"%Y-%m-%d-%T")
for ((k=1; k<6; k++)); do
	filename="${k}|wget|$now.log"
	echo "k=${k}" > "$filename"
	for ((c=0; c<k; c++)) do
		wget -a "$filename" ftp.se.debian.org/tails/stable/iuk/Tails_amd64_3.7.1_to_3.8.iuk
	done
done
