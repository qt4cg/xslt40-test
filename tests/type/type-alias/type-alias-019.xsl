<?xml version="1.0" encoding="utf-8"?> 

<xsl:package
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   fixed-namespaces="cx=http://example.ns/cx #standard"
   xmlns:cx="http://example.ns/cx"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   expand-text="yes"
>

  <xsl:use-package name="http://www.w3.org/pack/type-alias-019-lib" package-version="1.0.0"/>
  
   
  <xsl:template name="xsl:initial-template" visibility="public">
    <xsl:variable name="out" select="cx:total($in)"/>
    <out type="{if ($out instance of xs:double) then 'double' else 'decimal'}"
         value="{$out}"/>
  </xsl:template>
  
  <xsl:variable name="in" as="cx:currency*" select="1.0, 2.0, 3.0, 4.0"/>
  

</xsl:package>
