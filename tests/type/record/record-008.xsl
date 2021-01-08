<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:map="http://www.w3.org/2005/xpath-functions/map"
   xmlns:cx="http://saxon.sf.net/complex"
   exclude-result-prefixes="xs cx"
   expand-text="yes"
>

  <!-- Use extensible record type in as clause -->
  
  <xsl:variable name="ZERO" as="record(r as xs:double, i as xs:double, *)" select="cx:complex(0, 0) => map:put('x', 0)"/>
  
  <xsl:function name="cx:complex" as="record(r as xs:double, i as xs:double)">
    <xsl:param name="r" as="xs:double"/>
    <xsl:param name="i" as="xs:double"/>
    <xsl:sequence select="map{'r': $r, 'i': $i}"/>
  </xsl:function>
  
  <xsl:function name="cx:add" as="record(r as xs:double, i as xs:double)">
    <xsl:param name="x" as="record(r as xs:double, i as xs:double)"/>
    <xsl:param name="y" as="record(r as xs:double, i as xs:double, *)"/>
    <xsl:sequence select="cx:complex($x?r + $y?r, $x?i + $y?i)"/>
  </xsl:function>
  
  <xsl:function name="cx:toString" as="xs:string">
    <xsl:param name="x" as="record(r as xs:double, i as xs:double)"/>
    <xsl:sequence select="$x?r || '+' || $x?i || 'i'"/>
  </xsl:function>
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="x" as="record(r as xs:double, i as xs:double)" select="cx:complex(1.0, 1.0)"/>
    <result>{$ZERO => map:put(82, 83) instance of record(r as xs:string, i as xs:double, *)}</result>
  </xsl:template>  

</xsl:stylesheet>
