#!/bin/bash

for line in file*; do
    mv "$line" "$line.`date +"%Y%m%d"`"  #renaming every file with date extension
done