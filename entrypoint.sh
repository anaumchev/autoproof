#!/bin/sh -l

echo "Hello $1"
#time=$(date)
time=`autoproof.sh 2>&1`
echo "::set-output name=time::$time"
