<?xml version="1.0"?>
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

  <!-- FileName: namedtemplate13 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 11.6 -->
    <!-- Purpose: Ensure that we can use the default parameter value on some calls -->

<xsl:template match="/doc">
  <out>
    <xsl:text>Looking for doc...</xsl:text>
    <xsl:choose>
      <xsl:when test="//doc">
        <ext:status X1="hasDocBelow"/>
      </xsl:when>
      <xsl:otherwise>
        <ext:status/>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>&#010;Looking for croc...</xsl:text>
    <xsl:choose>
      <xsl:when test="//croc">
        <ext:status X1="hasCrocBelow"/>
      </xsl:when>
      <xsl:otherwise>
        <ext:status/>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>&#010;Looking for bloc...</xsl:text>
    <xsl:choose>
      <xsl:when test="//bloc">
        <ext:status X1="hasBlocBelow"/>
      </xsl:when>
      <xsl:otherwise>
        <ext:status/>
      </xsl:otherwise>
    </xsl:choose>
  </out>
</xsl:template>

<xsl:template name="ext:status">
  <xsl:param name="X1" as="xs:string">noLowerNode</xsl:param>
  <xsl:text>X1=</xsl:text><xsl:value-of select="$X1"/>
</xsl:template>

</xsl:stylesheet>
