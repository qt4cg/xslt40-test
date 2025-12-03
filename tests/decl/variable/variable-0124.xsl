<?xml version="1.0"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Use an EQName as a variable name -->
  <?spec xslt#local-variables?>

  <xsl:variable name="Q{v}prefix:var" select="1"/>

  <xsl:template match="/">
    <out v="{$Q{v}var}">
      <xsl:apply-templates select="*">
        <xsl:with-param name="Q{}pre:mod" select="*"/>
      </xsl:apply-templates>
    </out>
  </xsl:template>

  <xsl:template match="*">
    <xsl:param name="Q{}mod"/>
    <xsl:apply-templates>
      <xsl:with-param name="Q{}fix:mod" select="$Q{}mod"/>
    </xsl:apply-templates>
  </xsl:template>

</xsl:stylesheet>
