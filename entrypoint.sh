#!/bin/sh -l
export ISE_EIFFEL=/usr/local/Eiffel
export ISE_PLATFORM=linux-x86-64
$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin/autoproof.sh -batch -config *.ecf
compilation=`cat autoproof_output.txt`
$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin/autoproof.sh -batch -config *.ecf -verify collection:cluster
verification=`cat autoproof_output.txt`
echo "::set-output name=compilation::$compilation"
echo "::set-output name=verification::$verification"
