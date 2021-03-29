<?xml version="1.0"?> 
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

  <!-- DOCUMENT: http://www.w3.org/TR/xslt -->
  <!-- SECTION: 6 Named Templates -->
  <!-- PURPOSE: Make sure qualified names work for named templates. -->
  <xsl:template match="doc">
    <out>
      <ext:a/>
    </out>
  </xsl:template>
  
  <xsl:template name="ext:a">
    <xsl:text>ext:a</xsl:text>
  </xsl:template>

  <xsl:template name="a">
    <xsl:text>a</xsl:text>
  </xsl:template>
 
</xsl:stylesheet>
