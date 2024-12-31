#!/bin/sh

echo "Enter Output File Path:"; read f; j="{"
while :; do
  echo "Enter Name (or press Enter to finish):"; read n
  [ -z "$n" ] && break
  echo "Enter value for $n:"; read v
  [ -n "$v" ] && j="$j\"$n\": \"$v\","
done
echo "${j%,}}">"$f"
echo "Json saved to $f"