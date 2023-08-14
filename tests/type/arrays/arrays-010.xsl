<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:array="http://www.w3.org/2005/xpath-functions/array"
   exclude-result-prefixes="#all"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
>

  <xsl:template name="xsl:initial-template">
    <xsl:variable name="a" as="array(*)" select="[1,2,3,4,5]"/>
    <out>
      <xsl:apply-templates select="$a"/>
    </out>
  </xsl:template>
  
  <xsl:template match="array(xs:integer)">
    <in>OK</in>
  </xsl:template>
  
  


</xsl:stylesheet>
