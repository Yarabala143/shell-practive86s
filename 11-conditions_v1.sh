#!/bin/bash

echo "Please enter the number:"
read num

# Handle special cases for 0, 1, and 2
if [ "$num" -lt 2 ]; then
  echo "$num is not a prime number."
  exit 0
fi

# Assume the number is prime initially
is_prime=1

# Loop from 2 up to the square root of the number
# Using `seq` for generating numbers in a range
# `bc -l` for floating point calculations to get the square root
limit=$(echo "sqrt($num)" | bc -l | cut -d'.' -f1)

for (( i=2; i<=$limit; i++ )); do
  if (( num % i == 0 )); then
    is_prime=0 # Not a prime number
    break
  fi
