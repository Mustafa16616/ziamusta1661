<<Comment
This script help out to genetrate alert
when file system is increased from specifc criteria
we use df -h to check disk and grep our file system
then,we use awk command to view only specific index
and cut command to remove symbol or delimeter
Comment
#!/bin/bash
echo "Checking file system usage:"
disk_util=`df -h|grep "/dev/sda1"|awk '{print $5}' | cut -d '%' -f1`
echo "disk is used $disk_util percent."
if [ $disk_util -ge 80 ]; then
	echo "Storage is in critical condition,Please increase volumn:"
else
	echo "Storage is healthy:"
fi
