#!/bin/bash
#IPtoAS.sh

INPUT_FILE=ip.txt
#n= ${wc -l $INPUT_FILE}

iplist=`cat $INPUT_FILE`
for ip in $iplist
do
    whois $ip | grep 'origin' $info | awk '{print $2}' >> as.txt
done

cat as.txt | uniq -c | sort > sorted_as.txt
