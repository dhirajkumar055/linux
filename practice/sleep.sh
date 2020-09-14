#!/bin/bash
for i in `seq 1 100`
do
sleep 1
echo "$i" >>output.txt
done
