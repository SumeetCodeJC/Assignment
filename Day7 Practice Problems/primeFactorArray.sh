#!/bin/bash

read -p "Enter the Number for Getting Prime Factor: " n
echo "The Prime Factor for the Number "$n" are given below:"

index=0;

for(( i=2; i<=$n; i++ ))
do
        if(( $n%$i==0 ))
        then
                temp=1;
                for(( j=2; j<=$i/2; j++ ))
                do
                        if(($i%$j==0))
                        then
                                temp=0;
                                break;
                        fi
                done
                if(($temp==1))
                then
                        primeFactor[$index]=$i;
			((index++))
                fi
        fi
done

echo ${primeFactor[@]};
