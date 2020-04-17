How to check and create the user through shell script
======================================================

#!/bin/bash
file='/etc/passwd'
while read line; do
echo $line
done < $file

echo "Enter user name"
read user
if [ -u  "$user" ]
then
echo "user is exist"
else
`useradd $user`
echo "user is created"
fi
