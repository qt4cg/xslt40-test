<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:saxon="http://saxon.sf.net/"
  expand-text="yes"
  exclude-result-prefixes="#all"
  >
  <xsl:param name="n" as="element()*"><N>n</N></xsl:param>
  <xsl:param name="m" as="element()*"><M>m</M></xsl:param>
  <xsl:param name="o" as="element()*"><O>o</O></xsl:param>
  
  <xsl:template name="xsl:initial-template">
    <out>{$n union $m[23] otherwise $o}</out>
  </xsl:template>
  
  
</xsl:stylesheet>
