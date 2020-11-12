grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" catalina.out | sort | uniq

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head --------> it will shows the high cpu utilization

du -ahx . | sort -rh | head -5 ---------------------> it will show the high amount of GB or MB file or directory

du -sh * | sort -rh | head -5 -------------------->it will show the high amount of GB or MB file or directory

du -sh * | sort -rh
