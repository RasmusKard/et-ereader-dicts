<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:s="http://www.eki.ee/dict/ss"
                exclude-result-prefixes="s">
    
    <xsl:output method="xml" encoding="UTF-8"
                doctype-system="/home/rasmus/et-ereader-dicts/schema/xdxf_strict.dtd"
        />
    
    <xsl:template match="/">
        <xdxf revision="034">
            <meta_info>
                <languages>
                    <from xml:lang="et-EE"/>
                    <to xml:lang="et-EE"/>
                </languages>
                <title>EKSS 2009</title>
                <description>
                    Eesti keele seletav sõnaraamat 2009, Eesti Keele Instituut
                </description>
                <file_ver>001</file_ver>
                <creation_date>07-04-2013</creation_date>
                <last_edited_date>13-10-2017</last_edited_date>
                
            </meta_info>
            
            <!-- Body with entries -->
            <xsl:apply-templates select="//s:sr"/>
        </xdxf>
    </xsl:template>
    
    <xsl:template match="s:sr">
        <lexicon>
            <xsl:for-each select="s:A">
                <!-- translate(s:P/s:mg/s:m,'\|','') -->
                <ar>
                    <k xml:lang="et"><xsl:value-of select="translate(s:P/s:mg/s:m,'\|','')"/></k>
                    <def>
                        <xsl:for-each select="s:S/s:rp/s:tp">
                            <def>
                                <xsl:for-each select="s:tg/s:dg/s:d">
                                    
                                    <deftext>
                                        <xsl:value-of select="."/>
                                    </deftext>
                                    
                                </xsl:for-each>
                                
                                <xsl:for-each select="s:tg/s:np/s:ng/s:n">
                                    
                                    <ex> <xsl:value-of select="."/></ex>
                                </xsl:for-each>
                            </def>
                        </xsl:for-each>
                    </def>
                </ar>
            </xsl:for-each>
        </lexicon>
    </xsl:template>
</xsl:stylesheet>

<!-- <xsl:template match="s:sr">
     <xsl:for-each select="s:A">
     <ar>
     <k><xsl:value-of select="s:P/s:mg/s:m"/></k>
     
     <def>
     foreach select s:S/s:rp/s:tp
     |    foreach select s:tg/s:dg/s:d 
     valueof .
     foreach select s:tg/s:np/s:cg
     valueof s:c
     valueof s:caut
     <xsl:for-each select="s:S/s:rp/s:tp">
     <xsl:for-each select="s:tg/s:dg/s:d">
     <p> <xsl:value-of select="."/></p>
     </xsl:for-each>
     </xsl:for-each>
     <deftext>
     <xsl:value-of select="s:S/s:rp/s:tp/s:tg/s:np/s:ng/s:n"/>
     </deftext>
     </def>
     </ar>
     </xsl:for-each>
     </xsl:template> -->

<!-- 
     <ar>
     <k>marry</k>
     <def>
     <def cmt="To join in wedlock or matrimony (...)">
     <def>
     <gr>in pass.</gr>
     <deftext>(with ref. either to the act and ceremony, or to the wedded state as a result).
     </deftext>
     </def>
     <def>
     <deftext>Said of the priest or other functionary who performs the rite. Also absol.</deftext>
     </def>
     </def>
     <def>
     <def>
     <deftext>To give in marriage, cause to be married. Said esp. of a parent or guardian.</deftext>
     </def>
     <def>
     <deftext>With off</deftext>
     </def>
     </def>
     </def>
     </ar> -->