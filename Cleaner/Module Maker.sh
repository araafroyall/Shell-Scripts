#!/system/bin/sh
# Script Created by @AraafRoyall

if [ -d "/data/media/0" ]; then
    INT="/data/media/0"
elif [ -d "/storage/emulated/0" ]; then
    INT="/storage/emulated/0"
else
    INT="/sdcard"
fi

# -------------------------------------------#

