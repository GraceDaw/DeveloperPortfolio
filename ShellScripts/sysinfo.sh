#!/bin/bash

echo "=================================="
echo "       SYSTEM INFORMATION"
echo "=================================="

echo "Name: Gunika Jha"
echo "Roll Number: 2601730366"
echo "Date: $(date)"

echo ""
echo "CPU INFORMATION"
echo "----------------------------------"
lscpu | grep -E 'Model name|Core\(s\) per socket'

echo ""
echo "MEMORY INFORMATION"
echo "----------------------------------"
free -h | awk 'NR==2 {print "Total RAM: "$2 "\nUsed RAM: "$3}'

echo ""
echo "TOP 3 PROCESSES BY CPU USAGE"
echo "----------------------------------"
ps aux --sort=-%cpu | head -4

echo ""
echo "Report generated successfully."
