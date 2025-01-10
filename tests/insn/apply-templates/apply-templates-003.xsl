<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:variable name="doc">
        <doc>
            <a>aaa</a>
            <b>bbb</b>
            <c>ccc</c>
        </doc>
    </xsl:variable>
    
    <xsl:template name="xsl:initial-template">
        <out>
            <xsl:apply-templates select="$doc//a"/>
            <xsl:apply-templates select="$doc//b"/>
            <xsl:apply-templates select="$doc//c"/>
        </out>
    </xsl:template>
    
    <xsl:template match="a | b | c">
            <xsl:choose>
                <xsl:when test=". instance of element(a)"><A/></xsl:when>
                <xsl:when test=". instance of element(b)"><B/></xsl:when>
                <xsl:when test=". instance of element(c)"><C/></xsl:when>
                <xsl:otherwise><D/></xsl:otherwise>               
            </xsl:choose>
    </xsl:template>
        
        

</xsl:stylesheet>
