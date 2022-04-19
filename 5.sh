read string
let number1="${#string}"
let number="${#string}"
a=$((number1-1))
while (( $a >= 0 ))
do
firstCharacter=$firstCharacter${string:a:1}
let a=a-1
done
echo "$firstCharacter"
while (( $number >= 0 ))
do
firstCharacter=${string:$number:1}
let number=number-1
y=$firstCharacter
y=$(echo "$y" | tr "0-9a-zA-Z" "1-9a-zA-Z_")
echo -n "$y"
done
echo
let number=number1/2
let number2=number-1
while (( $number2 >= 0  ))
do
firstCharacter1=$firstCharacter1${string:$number2:1}
let number2=number2-1
done
while (( $number < $number1  ))
do
firstCharacter1=$firstCharacter1${string:$number:1}
let number=number+1
done
echo $firstCharacter1