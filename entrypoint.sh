#!/bin/bash
export ISE_EIFFEL=/usr/local/Eiffel
export ISE_PLATFORM=linux-x86-64
$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin/autoproof.sh -batch -config *.ecf
compilation=`cat autoproof_output.txt`
compilation=${compilation//'%'/'%25'}
compilation=${compilation//$'\n'/'%0A'}
compilation=${compilation//$'\r'/'%0D'}
$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin/autoproof.sh -batch -config *.ecf -verify collection:cluster
verification=`cat autoproof_output.txt`
verification=${verification//'%'/'%25'}
verification=${verification//$'\n'/'%0A'}
verification=${verification//$'\r'/'%0D'}
echo "::set-output name=compilation::$compilation"
echo "::set-output name=verification::$verification"
