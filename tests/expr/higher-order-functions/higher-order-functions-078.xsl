<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:math="http://www.w3.org/2005/xpath-functions/math"
  xmlns:local="http://local-functions/"
  version="4.0"
  expand-text="yes">
  
  <xsl:function name="local:increment">
    <xsl:param name="in" required="no" select="."/>
    <xsl:sequence select="number($in) + 1"/>
  </xsl:function>
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="FN" select="namespace-uri-from-QName(function-name(count#1))"/>
    <xsl:variable name="MATH" select="namespace-uri-from-QName(function-name(math:pi#0))"/>
    <xsl:variable name="XS" select="'http://www.w3.org/2001/XMLSchema'"/>
    <xsl:variable name="doc"><e>22</e></xsl:variable>
    <out>
      <!-- Ordinary fn function -->
      <a><xsl:value-of select="abs#1(-3)"/></a>
      <!-- Ordinary math function -->
      <b><xsl:value-of select="math:sin#1(0)"/></b>
      <!-- Ordinary constructor function -->
      <c><xsl:value-of select="xs:integer#1('42')"/></c>
      <!-- Ordinary user function -->
      <d><xsl:value-of select="local:increment#1('42')"/></d>
      <xsl:for-each select="$doc/e">
        <!-- Context-dependent fn function, arity 0 -->
        <p><xsl:value-of select="name#0()"/></p>
        <!-- Context-dependent constructor function -->
        <q><xsl:value-of select="xs:integer#0()"/></q>
        <!-- Context-dependent user function -->
        <r><xsl:value-of select="local:increment#0()"/></r>
      </xsl:for-each>
    </out>
  </xsl:template>
  
</xsl:stylesheet>