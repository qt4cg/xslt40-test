<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:cx="http://saxon.sf.net/complex"
   exclude-result-prefixes="xs cx"
   expand-text="yes"
>

  <xsl:item-type name="cx:complex" as="array(xs:double)"/>
  
  <xsl:function name="cx:complex" as="cx:complex">
    <xsl:param name="r" as="xs:double"/>
    <xsl:param name="i" as="xs:double"/>
    <xsl:sequence select="[$r, $i]"/>
  </xsl:function>
  
  <xsl:function name="cx:add" as="cx:complex">
    <xsl:param name="x" as="cx:complex"/>
    <xsl:param name="y" as="cx:complex"/>
    <xsl:sequence select="[$x(1) + $y(1), $x(2) + $y(2)]"/>
  </xsl:function>
  
  <xsl:function name="cx:toString" as="xs:string">
    <xsl:param name="x" as="cx:complex"/>
    <xsl:sequence select="$x(1) || '+' || $x(2) || 'i'"/>
  </xsl:function>
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="x" as="cx:complex" select="cx:complex(1.0, 1.0)"/>
    <xsl:variable name="y" as="cx:complex" select="cx:complex(-2.0, -2.0)"/>
    <result>{cx:add($x, $y) => cx:toString()}</result>
  </xsl:template>  

</xsl:stylesheet>
