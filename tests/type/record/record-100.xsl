<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:f="http://local-functions/"
   xmlns:saxon="http://saxon.sf.net/"
   exclude-result-prefixes="#all"
   expand-text="yes"
>
  <!-- record type : subtype relationships -->
  

  
  <xsl:param name="S" static="yes" required="yes"/>
  <xsl:param name="T" static="yes" required="yes"/>
  
  <xsl:item-type name="S" _as="{$S}"/>
  <xsl:item-type name="T" _as="{$T}"/>
  
 
  <xsl:template name="xsl:initial-template">
    <out>{
      (: return true if T is a subtype of S :)
      function($a as S) as xs:integer {3}
        instance of
      function(T) as xs:integer  
    }</out>
  </xsl:template>
  
 
</xsl:stylesheet>
