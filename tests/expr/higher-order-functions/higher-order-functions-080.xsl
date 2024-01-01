<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:math="http://www.w3.org/2005/xpath-functions/math"
  xmlns:local="http://local-functions/"
  version="4.0"
  expand-text="yes">
  
  <xsl:function name="local:subtract">
    <xsl:param name="a1"/>
    <xsl:param name="a2"/>
    <xsl:sequence select="number($a1) - number($a2)"/>
  </xsl:function>
  
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:value-of select="local:subtract(a2:=?, a1:=?)(3, 10)"/>
    </out>
  </xsl:template>
  
</xsl:stylesheet>