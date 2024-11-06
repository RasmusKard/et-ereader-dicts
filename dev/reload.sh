#!/bin/bash



xmlFilePath='/home/rasmus/et-ereader-dicts/data/snippet.xml'
xsltFilePath='/home/rasmus/et-ereader-dicts/dev/test.xslt'

xdxfFilePath="./result.xdxf"
if [ -f "$xdxfFilePath" ]; then
    rm $xdxfFilePath
fi
# Convert XML to XDXF using XSLT
xsltproc --output $xdxfFilePath $xsltFilePath $xmlFilePath


resultFilePath='./result.mobi'

# Remove old result dir
if [ -d "$resultFilePath" ]; then
    rm -r $resultFilePath
fi


# Pyglossary convert XDXF to mobi
python3 ./pyglossary-4.7.1/main.py $xdxfFilePath $resultFilePath


okular --unique "$resultFilePath/OEBPS/content.mobi" &
