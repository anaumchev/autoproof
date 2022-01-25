#!/bin/sh -l
/usr/local/Eiffel/studio/spec/linux-x86-64/bin/autoproof.sh -batch -config *.ecf
/usr/local/Eiffel/studio/spec/linux-x86-64/bin/autoproof.sh -batch -config *.ecf -verify collection:cluster
#time=$(date)
#echo "::set-output name=time::$time"
