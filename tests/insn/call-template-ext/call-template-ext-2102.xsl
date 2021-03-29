<?xml version="1.0"?> 
<?spec xslt#named-templates?>
<?error ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

<!-- General test for xsl:call-template. -->
<!-- Error : supplied parameter is of wrong type. Should be detected statically -->
 
<xsl:template match="doc">
   <out>
      <ext:ntmp1 pvar1="3"/>
   </out>
</xsl:template>
 
<xsl:template name="ext:ntmp1">
    <xsl:param name="pvar1" as="xs:date"/>
    <xsl:value-of select="$pvar1"/>
</xsl:template>
 
</xsl:stylesheet>
