<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:mf="http://example.com/mf"
    xmlns:array="http://www.w3.org/2005/xpath-functions/array"
    exclude-result-prefixes="#all"
    version="3.0">
    
    <!-- multiple composite merge keys, mixed types -->
    
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:output indent="yes"/>
    
    <xsl:param name="doc1">
        <root>
            <data>
                <foo key=""/>
                <foo key="a" key2="p q"/>
                <foo key="a b d"/>
                <foo key="a f"/>
                <foo key="b x"/>
            </data>
        </root>
    </xsl:param>
    
    <xsl:param name="doc2">
        <root>
            <data>
                <foo key=""/>
                <foo key="a" key2="p 2 r"/>
                <foo key="a g"/>
                <foo key="b"/>
            </data>
        </root>
    </xsl:param>
    
    <xsl:template match="/" name="xsl:initial-template">
        <out>
          <xsl:merge>
            <xsl:merge-source for-each-item="$doc1, $doc2" select="root/data/foo">
                <xsl:merge-key select="tokenize(@key)"/>
                <xsl:merge-key select="tokenize(@key2) ! (if (. castable as xs:integer) then xs:integer(.) else .)"/>
            </xsl:merge-source>
            <xsl:merge-action>
                <entry keys="{current-merge-key()}"/>
            </xsl:merge-action>
          </xsl:merge>
        </out>
    </xsl:template>
    
  
</xsl:stylesheet>