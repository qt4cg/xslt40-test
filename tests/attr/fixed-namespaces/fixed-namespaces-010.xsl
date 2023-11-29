<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:my="http://example.com/my/ns"
    exclude-result-prefixes="#all"
    fixed-namespaces="xs=http://www.w3.org/2001/XMLSchema my your=http://example.com/your/ns">
    

    <xsl:template name="main">
        <xsl:variable name="e" as="element(my:root)">
            <my:root>12</my:root>
        </xsl:variable>
        <xsl:apply-templates select="$e" mode="your:mode"/>
    </xsl:template>
    
    <xsl:template match="my:root" mode="your:mode">
        <out><xsl:copy-of select="string(.)"/></out>
    </xsl:template>
 
</xsl:stylesheet>
