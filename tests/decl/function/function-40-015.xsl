<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:f="http://f/"
   expand-text="yes"
   exclude-result-prefixes="#all">
   
   <xsl:function name="f:product" as="xs:integer" variadic="yes">
      <xsl:param name="base" as="xs:integer"/>
      <xsl:param name="values" as="xs:integer*"/>
      <xsl:if test="empty($values)" then="1" else="(head($values) - $base) × f:product($base, tail($values))"/>
   </xsl:function>
   
   
   <xsl:template name="xsl:initial-template">
      <out>
         <a>{f:product(10, 11,12,13,14)}</a>
         <b>{f:product(10, (11,12,13,14))}</b>
         <c>{f:product(10, (11,12),(13,14))}</c>
         <d>{f:product(10, 11,12,?,14)(13)}</d>
         <e>{f:product#5(10, 11,12,13,14)}</e>
      </out>
   </xsl:template>
</xsl:stylesheet>
