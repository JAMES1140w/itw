#!/bin/bash

read -p "Enter first number: " var1
read -p "Enter second number: " var2

read -p "Enter operation (+, -, *, /): " op

if [ "$op" == "+" ]; then
    result=$(echo "$var1 + $var2" | bc)
    echo "Addition of $var1 and $var2: $result"
elif [ "$op" == "-" ]; then
    result=$(echo "$var1 - $var2" | bc)
    echo "Subtraction of $var1 and $var2: $result"
elif [ "$op" == "*" ]; then
    result=$(echo "$var1 * $var2" | bc)
    echo "Multiplication of $var1 and $var2: $result"
elif [ "$op" == "/" ]; then
    if [ "$var2" -ne 0 ]; then
        result=$(echo "scale=2; $var1 / $var2" | bc)
        echo "Division of $var1 and $var2: $result"
    else
        echo "Error: Division by zero is not allowed."
    fi
else 
    echo "Invalid operation."
fi
#anmol srivastava BT24CSA025 
#PROGRAM TO DO OPERATIONS ON +,_,*,/

