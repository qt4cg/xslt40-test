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
  
  <xsl:template match="type(cx:complex)">{?r}{if (?i ge 0) then '+' else ''}{?i}i</xsl:template>
  
  <xsl:template match="type(cx:complex)[?i=0]">{?r}</xsl:template>
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="x" as="type(cx:complex)" select="cx:complex(1.0, 1.5)"/>
    <xsl:variable name="y" as="type(cx:complex)" select="cx:complex(-2.0, 0.5)"/>
    <xsl:variable name="z" as="type(cx:complex)" select="cx:complex(2.0, -2.5)"/>
    <out>
      <x><xsl:apply-templates select="$x"/></x>
      <y><xsl:apply-templates select="$y"/></y>
      <z><xsl:apply-templates select="$z"/></z>
    </out>
  </xsl:template>  

</xsl:stylesheet>
