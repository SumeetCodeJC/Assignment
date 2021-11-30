#!/BIN/BASH


random=$1

if((random==1))
then
        echo "Monday"
elif((random==2))
then
        echo "Tuesday"
elif((random==3))
then
        echo "Wednesday"
elif((random==4))
then
        echo "Thursday"
elif((random==5))
then
        echo "Friday"
elif((random==6))
then
        echo "Saturday"
elif((random==7))
then
        echo "Sunday"
else
        echo "Invaild Input"
fi
