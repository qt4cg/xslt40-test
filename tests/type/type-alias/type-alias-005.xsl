<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:cx="http://saxon.sf.net/complex"
   exclude-result-prefixes="xs cx"
   expand-text="yes"
>

  <xsl:item-type name="cx:complex" as="record(r as xs:double, i as xs:double)"/>
  
  <xsl:function name="cx:complex" as="type(cx:complex)">
    <xsl:param name="r" as="xs:double"/>
    <xsl:param name="i" as="xs:double"/>
    <xsl:sequence select='map{"r":$r, "i":$i}'/>
  </xsl:function>
  
  <xsl:function name="cx:add" as="type(cx:complex)">
    <xsl:param name="x" as="type(cx:complex)"/>
    <xsl:param name="y" as="type(cx:complex)"/>
    <xsl:sequence select='map{"r": $x?r + $y?r, "i": $x?i + $y?i}'/>
  </xsl:function>
  
  <xsl:function name="cx:toString" as="xs:string">
    <xsl:param name="x" as="type(cx:complex)"/>
    <xsl:sequence select="$x?r || '+' || $x?i || 'i'"/>
  </xsl:function>
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="x" as="type(cx:complex)" select="cx:complex(1.0, 1.0)"/>
    <xsl:variable name="y" as="type(cx:complex)" select="cx:complex(-2.0, -2.0)"/>
    <result>{cx:add($x, $y) => cx:toString()}</result>
  </xsl:template>  

</xsl:stylesheet>
