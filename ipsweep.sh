#!/bin/bash
#TCM PEH course modified version
#It pings a given IP range and print it if it's up 
#The range only applies for last octect of the given IPv4
if [ "$1" == "" ]
then
echo "You forgot an IP address!"
echo "Syntax: ./ipsweep.sh x.x.x"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi