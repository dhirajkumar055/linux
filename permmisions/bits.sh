#!/bin/bash

#4  -  SUID
#2  -  SGUID
#1  -  Sticky bit
#6  -  SGUID and SUID

chmod 6777 filename

chmod 0777 filename #Normal

cat /etc/login.defs |grep -i umask
