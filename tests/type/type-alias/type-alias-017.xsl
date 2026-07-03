<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   fixed-namespaces="cx=http://example.ns/cx #standard"
   xmlns:cx="http://example.ns/cx"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   expand-text="yes"
>

  <xsl:import href="type-alias-017a.xsl"/>
  
  <xsl:item-type name="cx:currency" as="xs:double"/>
  
  <xsl:function name="cx:total" as="cx:currency">
    <xsl:param name="r" as="cx:currency*"/>
    <xsl:sequence select="sum($r)"/>
  </xsl:function>
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="in" as="xs:double*" select="1.0, 2.0, 3.0, 4.0"/>
    <xsl:variable name="out" select="cx:total($in)"/>
    <out type="{if ($out instance of xs:double) then 'double' else 'decimal'}"
         value="{$out}"/>
  </xsl:template>
  

</xsl:stylesheet>
