<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <!-- PURPOSE:  Test attribute default-mode (named mode) on xsl:for-each element. -->
    <xsl:template match="/">
        <out>
            <xsl:for-each select="doc" default-mode="a">
                <xsl:apply-templates select="a"/>                
            </xsl:for-each>           
        </out>
    </xsl:template>
    
    <xsl:template match="a" mode="a">
        <xsl:text>mode-a:</xsl:text>
        <xsl:value-of select="."/>
    </xsl:template>
    
    <xsl:template match="a">
        <xsl:text>no-mode:</xsl:text>
        <xsl:value-of select="."/>
    </xsl:template>
    
</xsl:stylesheet>
