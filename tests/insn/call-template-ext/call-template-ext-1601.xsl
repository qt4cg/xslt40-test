<?xml version="1.0"?>
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

  <!-- FileName: namedtemplate14 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 6 Named Templates -->
  <!-- Purpose: Test select= on xsl:param inside named template -->
  <!-- Output should be 'test' and 'pvar2 default data' -->

<xsl:template match="doc">
  <out>
    <xsl:variable name="RTF">
      <xsl:value-of select="a"/>
    </xsl:variable>
    <ext:ntmp1 pvar1="$RTF"/>
  </out>
</xsl:template>

<xsl:template name="ext:ntmp1">
  <!-- Must used nested quotes, else we'd be selecting nodes -->
  <xsl:param name="pvar1" select="'pvar1 default data'" />
  <xsl:param name="pvar2" select="'pvar2 default data'" />
  <xsl:value-of select="$pvar1"/><xsl:text>,</xsl:text>
  <xsl:value-of select="$pvar2"/>
</xsl:template>

</xsl:stylesheet>
