#!/bin/bash

#Creates a ’backup’ directory
mkdir backup

#Copies all .txt files from current directory to it
cp *.txt backup

#Lists contents of backup
ls -l backup/
