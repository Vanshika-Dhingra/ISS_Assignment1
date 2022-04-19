while read string
do 
if test "$string" != ""
then
  OUTPUT=$(cut -d "~" -f2 <<< "$string once said,")
  OUTPUT1=$(cut -d "~" -f1 <<<" $string ")
echo -n "${OUTPUT}\"$OUTPUT1\""
echo
fi
done < quotes.txt > speech.txt