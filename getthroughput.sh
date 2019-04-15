now=$(date +"%Y-%m-%d-%T")
filename="wget|$now.log"
wget -o "$filename" ftp.se.debian.org/tails/stable/iuk/Tails_amd64_3.7.1_to_3.8.iuk
