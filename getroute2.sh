array=(ziofood.ch www.investzim.com resolution.bm education.gouv.ci collingwood.ci inflatableworldoz.com stmark.com)
for ((c=0; c<7; c++)); do
        now=$(date +"%Y-%m-%d-%T")
        filename="${array[${c}]}|route|$now.log"
        echo $filename
        traceroute -n ${array[${c}]} > "$filename"
done
