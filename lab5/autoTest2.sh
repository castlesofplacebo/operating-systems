#!/bin/bash
>secondReport.txt

while true; do
checking=$(top -b -n 1 | grep "mem[2]*.bash")
status=$(echo $checking | awk '{if ($8 == "R") print $0}')

if [[ -n "$checking" && -n "$status" ]]; then
curDate=$(date +'%X')
echo "Date: $curDate" >> secondReport.txt
echo "Info about memory:" >> secondReport.txt
top -b -n 1 | head -n 5 | tail -n 2 >> secondReport.txt  #get the 4-th and 5-th strings in top
echo "Ingo about process mem.bash" >> secondReport.txt
echo "$checking" >> secondReport.txt
echo "Leader processes" >> secondReport.txt
top -b -n 1 | head -n 12 | tail -n 5 >> secondReport.txt
echo -e "\n" >> secondReport.txt
else
exit
fi
sleep 1
done
