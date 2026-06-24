#!/bin/bash

echo "Enter log file name:"
read logfile

echo ""
echo "===== AI LOG ANALYSIS ====="

echo ""
echo "ERROR Count:"
grep -c "ERROR" $logfile

echo ""
echo "WARNING Count:"
grep -c "WARNING" $logfile

echo ""
echo "Top 5 Frequent Lines:"
sort $logfile | uniq -c | sort -nr | head -5

echo ""
echo "AI Suggestion:"

errors=$(grep -c "ERROR" $logfile)

if [ $errors -gt 5 ]
then
    echo "High error rate detected. Investigate immediately."
elif [ $errors -gt 0 ]
then
    echo "Some errors found. Monitor system."
else
    echo "System looks healthy."
fi
