#!/bin/bash
dockerStatus=$(systemctl status docker | grep -i "Active" | awk '{print $3}' | tr -d '[()]')
dockerVersion=$(docker -v | awk '{print $3}' | tr -d ',')
current_date=$(date)


echo the current date is $current_date and the docker status is: $dockerStatus

echo the docker version is : $dockerVersion
