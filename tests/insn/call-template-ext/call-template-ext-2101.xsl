<?xml version="1.0"?> 
<?spec xslt#named-templates?>
<?error ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

<!-- General test for xsl:call-template. -->
<!-- Error : failure to supply a required parameter -->
 
<xsl:template match="doc">
   <out>
      <xsl:variable name="RTF">
        <xsl:value-of select="a"/>
      </xsl:variable>
      <ext:ntmp1 pvar1="$RTF"/>
   </out>
</xsl:template>
 
<xsl:template name="ext:ntmp1">
    <xsl:param name="pvar1" required="no">pvar1 default data</xsl:param>
    <xsl:param name="pvar2" required="no">pvar2 default data</xsl:param>
    <xsl:param name="pvar3" required="yes"/>
    <xsl:value-of select="$pvar1"/><xsl:text>,</xsl:text>
    <xsl:value-of select="$pvar2"/>
</xsl:template>
 
</xsl:stylesheet>
