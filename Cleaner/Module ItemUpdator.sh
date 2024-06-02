#!/bin/bash

# New description to be set
NEW_DESCRIPTION="This is the new description of your module."

# Use sed to replace the existing description with the new one
sed -i "s/^description=.*/description=${NEW_DESCRIPTION}/" /data/adb/modules/cleanerlitepro/module.prop

echo "The description in module.prop has been updated to:"
grep "^description=" /data/adb/modules/cleanerlitepro/module.prop