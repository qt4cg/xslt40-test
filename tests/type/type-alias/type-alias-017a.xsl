<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   fixed-namespaces="cx=http://example.ns/cx #standard"
   xmlns:cx="http://example.ns/cx"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   expand-text="yes"
>

  <xsl:item-type name="cx:currency" as="xs:decimal"/>
  
  <xsl:function name="cx:total" as="cx:currency">
    <xsl:param name="r" as="cx:currency*"/>
    <xsl:sequence select="sum($r)"/>
  </xsl:function>
  

</xsl:stylesheet>
