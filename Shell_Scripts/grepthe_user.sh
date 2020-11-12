#see the total users and grep the perticular user
#====================================================

#!/bin/bash
file='/etc/passwd'
while read line; do
echo $line
done < $file
grep siva /etc/passwd  | cut -d ':' -f1 >> passwd.txt
