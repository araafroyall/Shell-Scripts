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


MSK="/data/adb/modules"

echo "Checking Magisk Installed..."

if [ ! -d "$MSK" ]; then
  echo "Magisk Path Not found , Exiting..."
  exit 1
fi


echo "Magisk is Correctly Installed."
echo "Making Module Path..."

if [ ! -d "$MSK/cleanerlitepro" ]; then
if ! { mkdir -p "$MSK/cleanerlitepro" || install -d "$MSK/cleanerlitepro"; }; then
  echo "Failed to Create Module Path"
  exit 1
fi
fi


MDK="$MSK/cleanerlitepro"

echo "Module Path Created."
echo "Making build.prop file..."

echo "id=cleanerlitepro
name=Cleaner Lite Pro
version=1.0
versionCode=1
author=Araaf Royall ❂
description=Ultimate Magisk Module for Automated background cleaner at set intervals
" > $MDK/module.prop

echo "Checking Module File..."

if [ ! -f "$MDK/module.prop" ]; then
   echo "Failed to Create Module.prop, Exiting..."
exit 1
fi

echo "Module.prop File Sucessfully Created."

echo "Making Folder which will store data"


if [ ! -d "$MDK/xdata " ]; then
if ! { mkdir -p "$MDK/xdata" || install -d "$MDK/xdata"; }; then
  echo "Failed to Create Folder for Data"
  rm -rf "$MDK/xdata"
  exit 1
fi
fi

echo "Sucessfully Created Folder"

echo " Module Installation Sucess"


echo "Now you can complete other setup"