<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:f="http://local-functions/"
   exclude-result-prefixes="#all"
   expand-text="yes"
>
  <!-- Tuple type as subtype of map type -->
  
  <!-- Tests whether a function returning T is acceptable as an argument where the expected type is a function returning M.
       This will only be true if T is a subtype of M
  -->
  
  <xsl:param name="M" static="yes" required="yes"/>
  <xsl:param name="T" static="yes" required="yes"/>
  <xsl:param name="V" as="map(*)" required="yes"/>
  
  <xsl:item-type name="M" _as="{$M}"/>
  <xsl:item-type name="T" _as="{$T}"/>
  
  <xsl:function name="f:hof">
    <xsl:param name="arg" as="function() as type(M)"/>
    <xsl:sequence select="$arg()"/>
  </xsl:function>
 
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:apply-templates select="f:hof(function() as type(T) {$V})"/>
    </out>
  </xsl:template>
  
 
</xsl:stylesheet>
