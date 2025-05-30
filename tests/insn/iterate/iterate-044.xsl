<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">

<!-- Basic test of xsl:iterate; local variables declared outside the xsl:iterate instruction -->

<xsl:template match="/">
    <xsl:apply-templates select="//page">
       <xsl:with-param name="max" select="1000"/>
    </xsl:apply-templates>
</xsl:template>

<xsl:template match="page">
  <xsl:param name="max" as="xs:integer"/>
  <xsl:variable name="more" as="xs:integer" select="$max + 1"/>
  <out more="{$more}">
    <xsl:iterate select="p">
      <xsl:param name="space-used" select="0"/>
      <xsl:param name="max" select="$max"/>
      <xsl:copy-of select="substring(., 1, 1)"/>
      <xsl:variable name="new-space-used" select="$space-used + string-length(.)"/>
      <xsl:if test="$new-space-used gt $more"><page-break/></xsl:if>
      <xsl:next-iteration>
         <xsl:with-param name="max" select="$more - 1"/>
         <xsl:with-param name="space-used" select="
               if ($new-space-used gt $more) then 0 else $new-space-used"/>
      </xsl:next-iteration>
    </xsl:iterate>
  </out>
</xsl:template>

</xsl:stylesheet>