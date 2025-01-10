<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:mf="http://example.com/mf"
    exclude-result-prefixes="#all"
    version="3.0">
    
    <!-- test empty merge key, with multiple keys -->
    
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:output indent="yes"/>
    
    <xsl:param name="doc1">
        <root>
            <data>
                <foo/>
                <foo key="a"/>
                <foo key="b"/>
                <foo key="d"/>
            </data>
        </root>
    </xsl:param>
    
    <xsl:param name="doc2">
        <root>
            <data>
                <foo/>
                <foo key="a"/>
                <foo key="c"/>
                <foo key="d"/>
                <foo key="e"/>
            </data>
        </root>
    </xsl:param>
    
    <xsl:template match="/" name="xsl:initial-template">
        <out>
          <xsl:merge>
            <xsl:merge-source for-each-item="$doc1, $doc2" select="root/data/foo">
                <xsl:merge-key select="@key"/>
                <xsl:merge-key select="local-name()"/>
            </xsl:merge-source>
            <xsl:merge-action>
                <entry size="{count(current-merge-group())}" 
                       key-size="{count(current-merge-key())}">
                    <xsl:sequence select="current-merge-key()"/>
                </entry>
            </xsl:merge-action>
          </xsl:merge>
        </out>
    </xsl:template>
    
  
</xsl:stylesheet>