<< Comment
This script is to install nfs in linux
we can also install other packages by only
changing the name of package
Comment
#!/bin/bash
echo "Installing package,Verifying...."
if [ $(uname) == "Linux" ]; then
	echo "Installation Started:"
	#package nfs
	yum -y install nfs-utils
elif [ $(uname) == "Unix" ]; then
	echo "Installtion Started:"
	dnf install -y nfs-utils
else
	echo "Operating system Error:"
fi
