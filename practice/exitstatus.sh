#!/bin/bash
trap "echo exiting process" EXIT
if [[ "$1" == "5" ]];
then
exit 5
else
exit 45
fi
