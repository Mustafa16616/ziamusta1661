<< comment
This is a script for taking input for username from user
and creating 20 users similar with that name.
comment
#!/bin/bash
read -p "User adding" usrname
for i in {1..20};do
	usr=${usrname}${i}
	adduser "$usr"
	echo "user $usr added"
done
