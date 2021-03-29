<?xml version="1.0"?>
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

  <!-- FileName: namedtemplate12 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 11.6 -->
    <!-- Purpose: Test use of passed-in value in an AVT.
     Derived from example code at end of 11.6 -->

<xsl:template match="doc">
  <out>
    <xsl:apply-templates/>
  </out>
</xsl:template>

<xsl:template match="OL">
  <xsl:text>OL!</xsl:text>
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="LI">
  <ext:numbered-block format="A. "/>
</xsl:template>

<xsl:template match="OL/LI">
  <ext:numbered-block format="a. "/>
</xsl:template>

<xsl:template name="ext:numbered-block">
  <xsl:param name="format" as="xs:string">1. </xsl:param>
  <xsl:number format="{$format}"/>
  <xsl:apply-templates/>
</xsl:template>

</xsl:stylesheet>
