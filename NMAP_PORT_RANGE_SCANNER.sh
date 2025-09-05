#!/bin/bash

#Until Loop Nmap Scanner(simple & useful)
target ="scanme.nmap.org"
port=20

until [$port -gt 30]
do 
  echo "Scanning port $port on target ..."
  nmap -p $port $target | grep "$port"
  ((port++))
done
