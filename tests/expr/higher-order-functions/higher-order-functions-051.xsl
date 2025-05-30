<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:local="http://local/"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <!-- Reference to undefined function in literal function item -->
    <!-- Note: becomes legal in proposed XSLT 4.0 -->
    
    
    
    <xsl:function name="local:f" as="xs:integer">
        <xsl:param name="x" as="xs:integer"/>
        <xsl:sequence select="$x + 1"/>
    </xsl:function>
    
    <xsl:template name="main">
        <out>
            <xsl:value-of select="$f('2008-10-02')"/>
        </out>
    </xsl:template>
    
    <xsl:variable name="f" select="concat#1"/>
    
     
 
</xsl:stylesheet>