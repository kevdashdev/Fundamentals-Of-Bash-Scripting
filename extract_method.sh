#!/bin/bash

function isDivisibleBy {
  return $(($1%$2))
}

for num in {1..100}; do
  output=""
  if isDivisibleBy $num 3; then
    output="Fizz"
  fi
  if isDivisibleBy $num 5; then
    output="${output}Buzz"
  fi
  if [ -z $output ]; then
    echo $num
  else
    echo $output
  fi
done
