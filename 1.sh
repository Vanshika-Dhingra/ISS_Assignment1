#!/bin/bash
sed '/^$/d' < quotes.txt > b.txt
echo
while read line
do 
sed '/^$/d'|cat -n b.txt | sort -uk2 | sort -nk1 | cut -f2-
done < b.txt
rm b.txt