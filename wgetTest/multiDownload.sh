now=$(date +"%Y-%m-%d-%T")
for ((c=0; c<10; c++)); do
	smallfilelog="smallfile|${c}|wget|$now.log"
	echo "Small file download ${c}:" > "$smallfilelog"
	wget -o "$smallfilelog" ftp.se.debian.org/debian/dists/Debian9.8/contrib/dep11/icons-64x64.tar.gz

	mediumfilelog="mediumfile|${c}|wget|$now.log"
	echo "Medium file download ${c}:" > "$mediumfilelog"
	wget -o "$mediumfilelog" ftp.se.debian.org/debian/indices/files/components/suite-testing.list.gz

	largefilelog="largefile|${c}|wget|$now.log"
	echo "Large file download ${c}:" > "$largefilelog"
	wget -o "$largefilelog" ftp.se.debian.org/tails/stable/iuk/Tails_amd64_3.7.1_to_3.8.iuk
done
