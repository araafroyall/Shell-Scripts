printf "\033c"; echo "Warning: Obfuscation may break functionality. Back up your file first."; echo ""
read -p "Enter path to .sh file: " filePath

echo "echo '$(base64 "$filePath")' | base64 -d | sh" > "$filePath" && chmod +x "$filePath"

printf "\033c"; echo "File obfuscated and overwritten."