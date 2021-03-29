<?xml version="1.0"?> 
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:ext="http://0702.com/" extension-element-prefixes="ext">

  <!-- Test for recursion with xsl:call-template. -->
  <!-- As -0701 but with namespace prefixes in variable names -->

  <xsl:template match="/doc" xmlns:P="http://0702.com/" exclude-result-prefixes="P">
    <out>
      <xsl:variable name="ResultTreeFragTest" select="name(.)"/>
      <P:ntmp1 P:pvar1="$ResultTreeFragTest"/>
    </out>
  </xsl:template>

  <xsl:template name="Q:ntmp1" xmlns:Q="http://0702.com/" exclude-result-prefixes="Q">
    <xsl:param name="Q:pvar1">def-text-1</xsl:param>
    <xsl:param name="Q:pvar2">def-text-2</xsl:param>
    <xsl:value-of select="$Q:pvar1"/>
    <xsl:text>,</xsl:text>
    <xsl:value-of select="$Q:pvar2"/>
    <xsl:text>,</xsl:text>
    <xsl:apply-templates select="*">
      <xsl:with-param name="Q:pvar1" select="$Q:pvar1"/>
    </xsl:apply-templates>
  </xsl:template>

  <xsl:template match="*" xmlns:R="http://0702.com/" exclude-result-prefixes="R">
    <xsl:param name="R:pvar1">def-text-1</xsl:param>
    <R:ntmp1 R:pvar1="$R:pvar1" R:pvar2="name(.)"/>
  </xsl:template>

</xsl:stylesheet>
