#!/bin/sh -l
export ISE_EIFFEL=/usr/local/Eiffel
export ISE_PLATFORM=linux-x86-64
compilation=`$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin/autoproof.sh -batch -config *.ecf`
verification=`$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin/autoproof.sh -batch -config *.ecf -verify collection:cluster`
#time=$(date)
echo "::set-output name=compilation::$compilation"
echo "::set-output name=verification::$verification"
