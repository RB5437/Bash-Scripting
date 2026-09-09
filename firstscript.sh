#!/bin/bash

### This script print system info ###
echo "Welcome to bash script"
echo
echo "###############################################"
echo "The uptime of system is:"
uptime
echo

echo "###############################################"
echo "Memory Utilization"
free -m
echo


echo "###############################################"
echo "Disk Utilization"
df -h
