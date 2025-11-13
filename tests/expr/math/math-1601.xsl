<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec fo#func-number?>
    <!-- Purpose: Test of number() conversion function for small decimal numbers. -->

<xsl:output method="xml" indent="no" encoding="UTF-8"/>

<xsl:template match="doc">
  <out>
      <a><xsl:value-of select="number(1.75)"/></a>
      <b><xsl:value-of select="number(7 div 4)"/></b>
      <c><xsl:value-of select="(number(1.75) = (7 div 4))"/></c>
      <d><xsl:value-of select="number(0.109375 * 16)"/></d>
      <e><xsl:value-of select="(number(1.75) = (0.109375 * 16))"/></e>
      <f><xsl:value-of select="number(k)"/></f>
      <g><xsl:value-of select="number(4 div 10000)"/></g>
      <h><xsl:value-of select="(number(k) = (4.0e0 div 10000))"/></h>
      <i><xsl:value-of select="number(0.0001 * 4)"/></i>
      <j><xsl:value-of select="(number(k) = (0.0001 * 4.0e0))"/></j>
  </out>
</xsl:template>

</xsl:stylesheet>
