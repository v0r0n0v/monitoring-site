#!/bin/bash 

FILE=$1
readarray -t LINES < "$FILE"

for list in "${LINES[@]}";

do

HOSTS=$list
TIMEOUT=6
EMAIL="test@gmail.com"

for hostname in $HOSTS
do
  status_code=$(curl -sL -w '%{http_code}' $hostname -m $TIMEOUT -o /dev/null)
  echo "Resource $list provided a response: $status_code"
  if [ "$status_code" -ne 200 ]
    then
    echo "Error: $status_code on $hostname"
    echo "Resource $hostname provided a response: $status_code" | mail -s "Attention: $hostname is down" "$EMAIL"
  fi
done

done
