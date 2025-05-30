<?xml version="1.0"?>
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

  <!-- FileName: namedtemplate07 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 6 Named Templates -->
    <!-- Purpose: Tests the ability to reset and evaluate a parameter. -->

 <xsl:template match="todo">
 <out>
   <ext:section x="'showstopper'"/>
   <ext:section x="'high'"/>
   <ext:section x="'medium'"/>
   <ext:section x="'low'"/>
</out>
</xsl:template>

<xsl:template name="ext:section">
  <xsl:param name="x">other</xsl:param>

  1.<xsl:value-of select="$x"/>
  <xsl:if test="./action[@priority=string($x)]">
   2.<xsl:value-of select="$x"/>
  </xsl:if>

</xsl:template>

</xsl:stylesheet>