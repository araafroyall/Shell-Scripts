#!/bin/sh

i=0
while [ $i -lt 100 ]
do
  RANDOM_CODE=$(( (RANDOM % 9000 + 1000) * 10000 + (RANDOM % 10000) ))
  echo $RANDOM_CODE
  i=$((i + 1))
done


# generates upto 100 digits