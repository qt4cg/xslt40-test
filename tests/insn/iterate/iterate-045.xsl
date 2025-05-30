<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs local"
  xmlns:local="urn:local">

<!-- xsl:iterate within xsl:function -->

<xsl:template match="/">
    <xsl:apply-templates select="//page">
       <xsl:with-param name="max" select="1000"/>
    </xsl:apply-templates>
</xsl:template>

<xsl:template match="page">
  <xsl:param name="max" as="xs:integer"/>
  <xsl:variable name="more" as="xs:integer" select="$max + 1"/>
  <xsl:sequence select="local:f(., $max, $more)"/>
</xsl:template>

<xsl:function name="local:f">
  <xsl:param name="page"/>
  <xsl:param name="max" as="xs:integer"/>
  <xsl:param name="more" as="xs:integer"/>
  <xsl:variable name="even-more" select="$more+1"/>
  <out more="{$more}">
    <xsl:iterate select="$page/p">
      <xsl:param name="space-used" select="0"/>
      <xsl:param name="max" select="$max"/>
      <xsl:copy-of select="substring(., 1, 1)"/>
      <xsl:variable name="new-space-used" select="$space-used + string-length(.)"/>
      <xsl:if test="$new-space-used gt $more"><page-break/></xsl:if>
      <xsl:next-iteration>
         <xsl:with-param name="max" select="$more - 1"/>
         <xsl:with-param name="space-used" select="
               if ($new-space-used ge $even-more) then 0 else $new-space-used"/>
      </xsl:next-iteration>
    </xsl:iterate>
  </out>
  <xsl:if test="current-date() lt xs:date('1900-01-01')">
    <xsl:sequence select="local:f($page, 23, 59)"/>
  </xsl:if>
</xsl:function>

</xsl:stylesheet>