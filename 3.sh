#!/bin/bash 
read filename 
value_b=`wc -c < $filename`  
value_l=`wc -l < $filename`  
value_w=`wc -w < $filename`  
expr $value_b 
expr $((value_l+1)) 
expr $value_w
number=0
while IFS= read -r line || [ -n "$line" ]
do
let number=number+1
OUTPUT=$(wc -w<<<"$line")
echo -n  "Line No:$number"-Count of Words:
echo $OUTPUT
done < $filename
grep -o '[[:alnum:]]'* $filename | sort | uniq -c | sed -E 's/[[:space:]]*([0-9]+)(.+)/word:\2 - Count of repetition: \1/'