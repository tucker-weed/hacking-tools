#!/bin/bash

arp -a | grep -o '(.*)' | sed 's/[()]//g' | while read line 
do
   sudo nmap -sS $line
done

