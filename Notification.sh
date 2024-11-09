#!/system/bin/sh

# Root required
if [ "$(id -u)" -ne 0 ]; then
  echo "Root access required!"
  exit 1
fi

# Set title and message dynamically
title="Task Completed"
message="The task finished successfully in 5 minutes."

# Post notification with dynamic title and content
cmd notification post -S bigtext -t "$title" -c "$message" --priority high