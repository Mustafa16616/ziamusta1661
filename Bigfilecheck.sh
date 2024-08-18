<<Comment
This script will check big file
in a file system.we have to provide file path
while executing script
Comment
#!/bin/bash
filepath=$1
du -ah | sort -rn | head -10 > /root/size.txt
echo " The output of $1 is store in /root/size.txt "
cat /root/size.txt
