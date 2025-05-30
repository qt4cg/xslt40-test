<?xml version="1.0"?> 
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0" 
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

  <!-- DOCUMENT: http://www.w3.org/TR/xslt -->
  <!-- SECTION: 6 Named Templates -->
  <!-- PURPOSE: Call named template with non-qualified name, but with qualified 
                name in scope. -->
  <xsl:template match="doc">
    <out>
      <xsl:call-template name="a"/>
    </out>
  </xsl:template>
  
  <xsl:template name="ext:a">
    <ext:a/>
  </xsl:template>

  <xsl:template name="a">
    <xsl:text>a</xsl:text>
  </xsl:template>
 
</xsl:stylesheet>
