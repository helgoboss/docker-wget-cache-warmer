#!/bin/bash
while true
do
    echo Warming cache for $1...
	wget -r -nd --delete-after --wait=1 --header=X-Refresh-Cache:true $1
    sleep 2
done