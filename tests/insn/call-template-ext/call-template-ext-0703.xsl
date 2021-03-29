<?xml version="1.0"?> 
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

  <!-- Test for recursion with xsl:call-template. -->
  <!-- As -0701 but with EQNames as variable names -->

  <xsl:template match="/doc">
    <out>
      <xsl:variable name="ResultTreeFragTest" select="name(.)"/>
      <ext:ntmp1 ext:pvar1="$ResultTreeFragTest"/>
    </out>
  </xsl:template>

  <xsl:template name="ext:ntmp1" xmlns:Q="http://0702.com/" exclude-result-prefixes="Q">
    <xsl:param name="Q{http://extensions.com/}pvar1">def-text-1</xsl:param>
    <xsl:param name="Q{}pvar2">def-text-2</xsl:param>
    <xsl:value-of select="$Q:pvar1" xmlns:Q="http://extensions.com/"/>
    <xsl:text>,</xsl:text>
    <xsl:value-of select="$pvar2"/>
    <xsl:text>,</xsl:text>
    <xsl:apply-templates select="*">
      <xsl:with-param name="Q{http://extensions.com/}pvar1" select="$Q{http://extensions.com/}pvar1"/>
    </xsl:apply-templates>
  </xsl:template>

  <xsl:template match="*" xmlns:R="http://0702.com/" exclude-result-prefixes="R">
    <xsl:param name="R:pvar1" xmlns:R="http://extensions.com/">def-text-1</xsl:param>
    <ext:ntmp1 S:pvar1="$S:pvar1"  xmlns:S="http://extensions.com/" pvar2="name(.)"/>
  </xsl:template>

</xsl:stylesheet>
