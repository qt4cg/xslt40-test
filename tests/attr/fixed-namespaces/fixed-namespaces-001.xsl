<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    fixed-namespaces="my=http://example.com/my/ns your=http://example.com/your/ns">
    
    <xsl:template match="/" name="main">
        <xsl:call-template name="my:template"/>
    </xsl:template>
    <xsl:template name="my:template">
        <xsl:call-template name="your:template"/>
    </xsl:template>
    <xsl:template name="your:template">
        <out/>
    </xsl:template>
</xsl:stylesheet>
