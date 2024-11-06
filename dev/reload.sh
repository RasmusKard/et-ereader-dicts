#!/bin/bash



xmlFilePath='../snippet.xml'
xsltFilePath='../test.xslt'
xdxfFilePath='./result.xdxf'

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
