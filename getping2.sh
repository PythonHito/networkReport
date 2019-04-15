array=(ziofood.ch www.investzim.com resolution.bm education.gouv.ci collingwood.ci inflatableworldoz.com stmark.com)
for ((c=0; c<7; c++)); do
        now=$(date +"%Y-%m-%d-%T")
        filename="${array[${c}]}|ping|$now.log"
        echo $filename
        ping -c 120 -n ${array[${c}]} > "$filename"
done

