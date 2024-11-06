#!/bin/bash
xsltFilePath="./test.xslt"
# Trigger reload script on XSLT file update
while inotifywait -q -e close_write "$xsltFilePath";
do 
echo "$(date +%T) Refreshing"
./reload.sh &>/dev/null; 
done