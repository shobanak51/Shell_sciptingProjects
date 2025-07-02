#!/bin/bash

# Arithmetic Script - Perform basic operations

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

echo "Select operation:"
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
echo "4) Division"
read choice

case $choice in
  1)
    result=$((num1 + num2))
    echo "Result: $num1 + $num2 = $result"
    ;;
  2)
    result=$((num1 - num2))
    echo "Result: $num1 - $num2 = $result"
    ;;
  3)
    result=$((num1 * num2))
    echo "Result: $num1 * $num2 = $result"
    ;;
  4)
    if [ "$num2" -eq 0 ]; then
      echo "Error: Division by zero!"
    else
      result=$(echo "scale=2; $num1 / $num2" | bc)
      echo "Result: $num1 / $num2 = $result"
    fi
    ;;
  *)
    echo "Invalid option!"
    ;;
esac
