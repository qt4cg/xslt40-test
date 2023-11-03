<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:cx="http://saxon.sf.net/complex"
   exclude-result-prefixes="xs cx"
   expand-text="yes"
>

  <!-- Coercion of record types from untyped document node -->
  
 
  
  <xsl:function name="cx:toString" as="xs:string">
    <xsl:param name="x" as="record(r as xs:double, i as xs:double)"/>
    <xsl:sequence select="$x?r || '+' || $x?i || 'i'"/>
  </xsl:function>
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="zeroDoc">0.0e0</xsl:variable>
    <result>{cx:toString(map{'r':$zeroDoc, 'i':$zeroDoc})}</result>
  </xsl:template>  

</xsl:stylesheet>
