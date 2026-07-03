<?xml version="1.0" encoding="utf-8"?> 

<xsl:package
  name="http://www.w3.org/pack/type-alias-018-lib"
   package-version="1.0.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   fixed-namespaces="cx=http://example.ns/cx #standard"
   xmlns:cx="http://example.ns/cx"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   expand-text="yes"
>

  <xsl:item-type name="cx:currency" as="cx:decimal" visibility="public"/>
  
  <xsl:function name="cx:total" as="cx:currency" visibility="public">
    <xsl:param name="r" as="cx:currency*"/>
    <xsl:sequence select="sum($r)"/>
  </xsl:function>
  
  <xsl:item-type name="cx:decimal" as="xs:decimal" visibility="private"/>
  

</xsl:package>
