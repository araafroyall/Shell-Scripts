Certainly! Here are 20 scripts that use conditional expressions with [ and ] (also known as test brackets) in sh scripts. These expressions help check for various conditions, such as the existence of files, directories, string comparisons, and more.

1. Check if File Exists

Check if a file exists, then print a message.

[ -f /xyz ] && echo "File exists" || echo "File does not exist"

2. Check if Directory Exists

Check if a directory exists, then print a message.

[ -d /my_directory ] && echo "Directory exists" || echo "Directory does not exist"

3. Check if File is Not Empty

Check if a file exists and is not empty.

[ -s /xyz ] && echo "File is not empty" || echo "File is empty or does not exist"

4. Check if Variable is Set

Check if a variable is set (non-empty).

[ -n "$MY_VAR" ] && echo "Variable is set" || echo "Variable is empty or not set"

5. Check if Variable is Empty

Check if a variable is empty.

[ -z "$MY_VAR" ] && echo "Variable is empty" || echo "Variable is set"

6. String Comparison (Equality)

Check if two strings are equal.

[ "$STR1" = "$STR2" ] && echo "Strings are equal" || echo "Strings are not equal"

7. String Comparison (Not Equal)

Check if two strings are not equal.

[ "$STR1" != "$STR2" ] && echo "Strings are not equal" || echo "Strings are equal"

8. Number Comparison (Greater Than)

Check if a number is greater than another.

[ "$NUM1" -gt "$NUM2" ] && echo "NUM1 is greater" || echo "NUM1 is not greater"

9. Number Comparison (Less Than)

Check if a number is less than another.

[ "$NUM1" -lt "$NUM2" ] && echo "NUM1 is less" || echo "NUM1 is not less"

10. Number Comparison (Equal)

Check if two numbers are equal.

[ "$NUM1" -eq "$NUM2" ] && echo "Numbers are equal" || echo "Numbers are not equal"

11. Number Comparison (Not Equal)

Check if two numbers are not equal.

[ "$NUM1" -ne "$NUM2" ] && echo "Numbers are not equal" || echo "Numbers are equal"

12. Check if File is Readable

Check if a file is readable.

[ -r /xyz ] && echo "File is readable" || echo "File is not readable"

13. Check if File is Writable

Check if a file is writable.

[ -w /xyz ] && echo "File is writable" || echo "File is not writable"

14. Check if File is Executable

Check if a file is executable.

[ -x /xyz ] && echo "File is executable" || echo "File is not executable"

15. Combine Conditions with AND (&&)

Check if two files both exist.

[ -f /file1 ] && [ -f /file2 ] && echo "Both files exist" || echo "One or both files do not exist"

16. Combine Conditions with OR (||)

Check if at least one of two files exists.

[ -f /file1 ] || [ -f /file2 ] && echo "At least one file exists" || echo "Neither file exists"

17. Check if Directory is Empty

Check if a directory is empty.

[ -d /my_directory ] && [ -z "$(ls -A /my_directory)" ] && echo "Directory is empty" || echo "Directory is not empty or does not exist"

18. Check if User is Root

Check if the current user is the root user.

[ "$(id -u)" -eq 0 ] && echo "User is root" || echo "User is not root"

19. Check if Command Exists

Check if a specific command is available.

[ -x "$(command -v my_command)" ] && echo "Command exists" || echo "Command does not exist"

20. Check File Modification Time (Newer)

Check if one file is newer than another file.

[ /file1 -nt /file2 ] && echo "/file1 is newer than /file2" || echo "/file1 is not newer than /file2"

These examples cover a wide range of conditions that can be tested in sh scripts using [ and ]. They are essential for writing more complex and robust scripts by handling different scenarios.

