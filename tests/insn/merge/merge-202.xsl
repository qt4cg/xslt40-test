<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:mf="http://example.com/mf"
    xmlns:array="http://www.w3.org/2005/xpath-functions/array"
    exclude-result-prefixes="#all"
    version="3.0">
    
    <!-- composite merge keys -->
    
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:output indent="yes"/>
    
    <xsl:param name="doc1">
        <root>
            <data>
                <foo key=""/>
                <foo key="a"/>
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
                <foo key="a"/>
                <foo key="a b c"/>
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
            </xsl:merge-source>
            <xsl:merge-action>
                <entry keys="{current-merge-key-array()}" 
                       size="{array:size(current-merge-key-array())}"/>
            </xsl:merge-action>
          </xsl:merge>
        </out>
    </xsl:template>
    
  
</xsl:stylesheet>