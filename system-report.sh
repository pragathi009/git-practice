#!/bin/bash

echo "================================="
echo "      SYSTEM HEALTH REPORT"
echo "================================="

echo "Current User:"
whoami

echo "Current Date & Time:"
date

echo "Hostname:"
hostname

echo "Current Directory:"
pwd

echo "Disk Usage:"
df -h

echo "Memory Usage:"
free -h

echo "System Uptime:"
uptime

echo "     REPORT COMPLETED     "
