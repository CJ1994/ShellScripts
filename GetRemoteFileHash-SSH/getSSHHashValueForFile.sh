#!/bin/bash
clear
echo  "Connecting to $1"
ssh $1 'bash -s' < caculateHashForFile.sh $1 $2

