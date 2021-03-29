<?xml version="1.0"?>
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">


<xsl:template match="doc">
  <out>
    <ext:ntmp1 pvar1="'top-level-a'"/>
  </out>
</xsl:template>

<xsl:template name="ext:ntmp1" mode="other" priority="-500" match="never">
  <xsl:param name="pvar1">Default text in pvar1</xsl:param>
  <xsl:value-of select="$pvar1"/><xsl:text> in ntmp1</xsl:text>
</xsl:template>

</xsl:stylesheet>
