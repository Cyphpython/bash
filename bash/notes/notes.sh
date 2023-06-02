#tell linux you use the bash language
#!/bin/bash
# variable 
name="entrez un nom"
#input
read name
#writing in the console
echo "Lorem ipsum dolor sit amet"
#input directly in the console
name=$1 #first argument
surname=$2 #second argument
#permission
chmod +x nomduscript
#verify permission
ls -l
#clear terminal
clear
#waiting script
sleep 1/2/3/etc...
#printing privilege and other things
echo "$PWD" #privilege
echo "$SHELL" #printing /bin/bash
echo "$USER" #user/root
echo "$HOSTNAME" #name of the machine
#printing the date
$(DATE)
#math
echo $((2 + 3))
#ternary operator
+ #addition
- #soustraction
* #multiplication
/ #division
a > b # A greater then B
a < b #A lesser then B
b <= a #B lesser or equal A
b >= a # B greater or equal A
|| #OR
&& # And
#define a random plage
$(( $RANDOM % 10)) #print a random number between 0 - 9
#conditionnal
if [[ $name == "y"]]; then
    echo "Awesome"
elif [[ $name == "bernard"]]; then
    echo "impostor detected"
else
    echo "Leave right now!!!"
fi
#case
case $name in 
    1)
        type= "test"
        hp= 10
        attack=20
        ;;
    2)
        type= "test"
        hp= 20
        attack= 4
    3)
        type= "test"
        hp= 8
        attack=15
esac
#boucle while
while #condition
do
    echo "hey"
    break #use with while true
    continue #skip a verification

done
#until
until [[ $order == "coffee"]]
do
    echo "coffee or tea"
    read order
done
#for 
for cups in {1..10}; 
do
    "hey you've had $cups cups of coffee today."
done
#exemple 
#add a random name at our age

echo "how old are you"
read age
var= $((( $RANDOM % 15) + %age))
echo "you will become rich when you are $var years old"
