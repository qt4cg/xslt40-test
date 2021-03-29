<?xml version="1.0"?>
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

  <!-- FileName: namedtemplate10 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 6 Named Templates -->
  <!-- Purpose: Test of simulated numerically-indexed for loop. -->
  <!-- This is example 77 from Nic Miloslav's tutorial site. -->

<xsl:template match="/">
  <out>
  	<xsl:apply-templates/>
  </out>
</xsl:template>

<xsl:template match="/doc/*">
  <p>
  <ext:for stop="@repeat"/>
  </p>
</xsl:template>

<xsl:template name="ext:for">
  <xsl:param name="start">1</xsl:param>
  <xsl:param name="stop">1</xsl:param>
  <xsl:param name="step">1</xsl:param>
  <!-- put out one iteration of the name and a trailing space -->
  <xsl:value-of select="name()"/>
  <xsl:text> </xsl:text>
  <!-- here's the recursion -->
  <xsl:if test="$start &lt; $stop">
    <ext:for stop="$stop" start="$start + $step"/>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
