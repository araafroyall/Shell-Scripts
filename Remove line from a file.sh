#!/bin/sh

f="main.txt"
pattern="$1"

Variable1=$(echo "$pattern" | sed 's/[][()^$.*]/\\&/g')

Variable2=$(grep -v -x -e "$Variable1" "$f")

echo "$Variable2" > "$f"