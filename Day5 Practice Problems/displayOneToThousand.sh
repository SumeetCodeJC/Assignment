#!/bin/bash

random=$1

case $random in

        1)
                echo "Unit";;
        10)
                echo "Ten";;
        100)
                echo "Hundred";;
        1000)
                echo "Thousand";;
        *)
                echo "Number must be 1, 10, 100, 1000"
esac
