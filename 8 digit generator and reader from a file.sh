#!/bin/sh

FILE="/sdcard/code.txt"

[ -f "$FILE" ] && grep -oE '^[0-9]{8}$' "$FILE" && exit 0

echo $(( (RANDOM%9000+1000)*10000 + RANDOM%10000 )) > "$FILE" && cat "$FILE"