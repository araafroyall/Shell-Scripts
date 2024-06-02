#!/system/bin/sh
# This script is created by AraafRoyall

if command -v sed > /dev/null 2>&1; then
  echo "Updating Module Details..."
else
  echo "Unable to Update Module Details, Exiting..."
exit 1
fi

#------------------------------------#

NEW_DESCRIPTION="This is the new description of your module."

MDK="/data/adb/modules/cleanerlitepro"

sed -i "s/^description=.*/description=${NEW_DESCRIPTION}/" $MDK/module.prop

echo "Module info Updated."