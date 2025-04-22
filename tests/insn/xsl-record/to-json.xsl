<xsl:stylesheet version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:f="http://local-functions.org/"
    exclude-result-prefixes="map xs f">
    <xsl:template match=".[. instance of map(*)]" mode="to-json">
      <xsl:variable name="m" select="." as="map(*)"/>
      <xsl:text>{</xsl:text>
      <xsl:for-each select="map:keys($m)">
        <xsl:sort select="."/>
        <xsl:if test="position() ne 1">,</xsl:if>
        <xsl:text>"</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>":</xsl:text>
        <xsl:choose>
          <xsl:when test="count($m(.)) ne 1">
            <xsl:text>[</xsl:text>
            <xsl:for-each select="$m(.)">
              <xsl:if test="position() ne 1">,</xsl:if>
              <xsl:apply-templates select="." mode="to-json"/>
            </xsl:for-each>
            <xsl:text>]</xsl:text>
          </xsl:when>
          <xsl:otherwise>
            <xsl:apply-templates select="$m(.)" mode="to-json"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
      <xsl:text>}</xsl:text>
    </xsl:template>
    
    <xsl:template match=".[. instance of xs:numeric]" mode="to-json">
      <xsl:value-of select="."/>
    </xsl:template>
    
    <xsl:template match=".[. instance of xs:boolean]" mode="to-json">
      <xsl:value-of select="."/>
    </xsl:template>  
              
    <xsl:template match="." mode="to-json">
      <xsl:text>"</xsl:text>
      <xsl:value-of select="."/>
      <xsl:text>"</xsl:text>
    </xsl:template>
</xsl:stylesheet>