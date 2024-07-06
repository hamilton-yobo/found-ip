#!/bin/bash 
clear
echo "Foi passado $# argumento"
echo "ARGUMENTO: $@"
echo -e "\n[+] Procurando IP...";
for i in `seq 1 254`
do
    ping -c 1 $1.$i |grep "64 bytes" |cut -d " " -f 4;
done
