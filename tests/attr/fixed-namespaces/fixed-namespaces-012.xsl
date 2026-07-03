<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    fixed-namespaces="my=http://example.com/my/ns your=http://example.com/your/ns #standard">
    

    <xsl:template name="main" xmlns:a="http://a.com/">
        <xsl:variable name="out">
            <dummy/>
        </xsl:variable>
        <out>
            <xsl:value-of select="sort($out/*/namespace::*/name())"/>
        </out>
    </xsl:template>
 
</xsl:stylesheet>
