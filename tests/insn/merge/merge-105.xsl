<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:mf="http://example.com/mf"
    exclude-result-prefixes="#all"
    version="3.0">
    
    <!-- test empty merge key, with multiple keys: (A, null) comes after (null, A) -->
    
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:output indent="yes"/>
    
    <xsl:param name="doc1">
        <root>
            <data>
                <foo key2="z"/>
                <foo key="a" key2="z"/>
                <foo key="b" key2="z"/>
                <foo key="d" key2="z"/>
            </data>
        </root>
    </xsl:param>
    
    <xsl:param name="doc2">
        <root>
            <data>
                <foo/>
                <foo key="a"/>
                <foo key="c" key2="z"/>
                <foo key="d" key2="z"/>
                <foo key="e" key2="z"/>
            </data>
        </root>
    </xsl:param>
    
    <xsl:template match="/" name="xsl:initial-template">
        <out>
          <xsl:merge>
            <xsl:merge-source for-each-item="$doc1, $doc2" select="root/data/foo">
                <xsl:merge-key select="@key"/>
                <xsl:merge-key select="@key2"/>
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