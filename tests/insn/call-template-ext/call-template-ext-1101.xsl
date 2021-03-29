<?xml version="1.0"?>
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

  <!-- FileName: namedtemplate09 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 6 Named Templates -->
    <!-- Purpose: Test of nested template calls. -->

<xsl:template match="doc">
  <out>
    <ext:tmplt1 par1="0"/>
  </out>
</xsl:template>

<xsl:template name="ext:tmplt1">
  <xsl:param name="par1">par1 default data</xsl:param>
  <in1>
    <xsl:value-of select="$par1"/>
    <ext:tmplt2 par1="1"/>
  </in1>
</xsl:template>

<xsl:template name="ext:tmplt2">
  <xsl:param name="par1">par1 default in tmplt2</xsl:param>
  <in2>
    <xsl:value-of select="$par1"/>
    <ext:tmplt3 par1="2"/>
  </in2>
</xsl:template>

<xsl:template name="ext:tmplt3">
  <xsl:param name="par1">par1 default in tmplt3</xsl:param>
  <in3>
    <xsl:value-of select="$par1"/>
    <ext:tmplt4 par1="3"/>
  </in3>
</xsl:template>

<xsl:template name="ext:tmplt4">
  <xsl:param name="par1">par1 default in tmplt4</xsl:param>
  <in4>
    <xsl:value-of select="$par1"/>
    <ext:tmplt5 par1="4"/>
  </in4>
</xsl:template>

<xsl:template name="ext:tmplt5">
  <xsl:param name="par1">par1 default in tmplt5</xsl:param>
  <in5>
    <xsl:value-of select="$par1"/>
    <ext:tmplt6 par1="5"/>
  </in5>
</xsl:template>

<xsl:template name="ext:tmplt6">
  <xsl:param name="par1">par1 default in tmplt6</xsl:param>
  <in6>
    <xsl:value-of select="$par1"/><xsl:text> - all the way in</xsl:text>
  </in6>
</xsl:template>

</xsl:stylesheet>
