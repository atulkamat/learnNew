#!/bin/bash
# create a report file
# set the variable to input
filename="$1"
foldername="$2"
# add -- to make sure input values dont have -p -o type inputs
mkdir -p --$filename
grep -- $filename shipmentStatus.csv > $foldername/$filename.csv

echo Report created in $foldername/$filename.csv