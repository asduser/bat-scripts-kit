#!/bin/bash

for i in $@
do
ping -c 1 $i &> /dev/null

if [ $? -ne 0 ]; then
	echo "`date`: failed, $i host is down!" | mail -s "$i server is down!" some@mail.com 
fi
done