#!/bin/bash

echo "Welcome $USER"
echo "Today is: `date +"%A %d %B"`"
echo "Current time is `date +"%r"`"
echo "Current Working Directory is: `pwd`"
echo "Directory count: `ls | wc -l`"
echo "Largest file in the current directory is: `du -ah 2>/dev/null | sort -n -r | head -n 1`"
