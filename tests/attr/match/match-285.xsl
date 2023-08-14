<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

<?spec xslt#patterns?>
  <!-- Purpose: mode="#all" applied to a mode that is explicitly named only in an xsl:default-mode attribute -->

<xsl:strip-space elements="*"/>  

<xsl:template match="letters">
  <out xsl:default-mode="zzz">
    <xsl:apply-templates select="*"/>
  </out>
</xsl:template>

<xsl:template match="letter" mode="#all">
  <in><xsl:value-of select="."/></in>
</xsl:template>

</xsl:stylesheet>
