#!/usr/bin/env bash

echo "hello"

for i in {1..16}
do
    if [[ 0 -eq "$i%5 + $i%3" ]]; then
      echo "fizzbuzz"
    elif [[ 0 -eq "$i%3" ]]; then
      echo "fizz"
    elif [[ 0 -eq "$i%5" ]]; then
      echo "buzz"
    else
      echo $i
    fi
done
