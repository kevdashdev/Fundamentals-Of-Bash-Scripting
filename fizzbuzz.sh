#!/bin/bash
for num in {1..100}; do
  output=""
  if [ $((num%3)) -eq 0 ]; then
    output='Fizz'
  fi
  if [ $((num%5)) -eq 0 ]; then
    output="${output}Buzz"
  fi
  if [ -z $output ]; then
    echo $num
  else
    echo $output
  fi
done
