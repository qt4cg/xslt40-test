<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:cx="http://saxon.sf.net/complex"
   exclude-result-prefixes="xs cx"
   expand-text="yes"
>

  <!-- Coercion of record types for function, param, variable -->
  
  <xsl:variable name="ZERO" as="record(r as xs:double, i as xs:double)" select="map{'r':0, 'i':0}"/>
  
  <xsl:function name="cx:complex" as="record(r as xs:double, i as xs:double)">
    <xsl:param name="r" as="xs:double"/>
    <xsl:param name="i" as="xs:double"/>
    <xsl:sequence select="map{'r': $r, 'i': $i}"/>
  </xsl:function>
  
  <xsl:function name="cx:complexInt" as="record(r as xs:double, i as xs:double)">
    <xsl:param name="r" as="xs:integer"/>
    <xsl:param name="i" as="xs:integer"/>
    <xsl:sequence select="map{'r': $r, 'i': $i}"/>
  </xsl:function>
  
  <xsl:function name="cx:add" as="record(r as xs:double, i as xs:double)">
    <xsl:param name="x" as="record(r as xs:double, i as xs:double)"/>
    <xsl:param name="y" as="record(r as xs:double, i as xs:double)"/>
    <xsl:sequence select="cx:complex($x?r + $y?r, $x?i + $y?i)"/>
  </xsl:function>
  
  <xsl:function name="cx:toString" as="xs:string">
    <xsl:param name="x" as="record(r as xs:double, i as xs:double)"/>
    <xsl:sequence select="$x?r || '+' || $x?i || 'i'"/>
  </xsl:function>
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="x" as="record(r as xs:double, i as xs:double)" select="cx:add(map{'r':1, 'i':0}, map{'r':1, 'i':1})"/>
    <result>{cx:add($x, $ZERO) => cx:add(cx:complexInt(1,1)) => cx:toString()}</result>
  </xsl:template>  

</xsl:stylesheet>
