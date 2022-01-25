#!/bin/bash
export ISE_EIFFEL=/usr/local/Eiffel
export ISE_PLATFORM=linux-x86-64
$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin/autoproof.sh -batch -config *.ecf
compilation_result=$?
if [[ $compilation_result != 0 ]]; then
  exit 1;
fi
$ISE_EIFFEL/studio/spec/$ISE_PLATFORM/bin/autoproof.sh -batch -config *.ecf -verify collection:cluster
verification_result=$?
if [[ $verification_result != 0 ]]; then
  exit 1;
fi
