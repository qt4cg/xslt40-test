<?xml version="1.0"?> 
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

<!-- Test for recursion with xsl:call-template. -->
<!-- <xsl:param name="pvar2" select="'stylesheet-var'"/> -->
 
<xsl:template match="/doc">
   <out>
      <xsl:variable name="ResultTreeFragTest" select="name(.)"/> 
      <ext:ntmp1 pvar1="$ResultTreeFragTest"/>
   </out>
</xsl:template>

<xsl:template name="ext:ntmp1">
    <xsl:param name="pvar1">def-text-1</xsl:param>
    <xsl:param name="pvar2">def-text-2</xsl:param>
    <xsl:value-of select="$pvar1"/><xsl:text>,</xsl:text>
    <xsl:value-of select="$pvar2"/><xsl:text>,</xsl:text>
    <xsl:apply-templates select="*">
      <xsl:with-param name="pvar1" select="$pvar1"/>
    </xsl:apply-templates>
</xsl:template>

<xsl:template match="*">
    <xsl:param name="pvar1">def-text-1</xsl:param>
    <ext:ntmp1 pvar1="$pvar1" pvar2="name(.)"/>
</xsl:template>
  
</xsl:stylesheet>