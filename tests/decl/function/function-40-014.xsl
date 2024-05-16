<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:f="http://f/"
   expand-text="yes"
   exclude-result-prefixes="#all">
   
   <xsl:function name="f:product" as="xs:integer" variadic="yes">
      <xsl:param name="values" as="xs:integer*"/>
      <xsl:if test="empty($values)" then="1" else="head($values) × f:product(tail($values))"/>
   </xsl:function>
   
   
   <xsl:template name="xsl:initial-template">
      <out>
         <a>{f:product(1,2,3,4)}</a>
         <b>{f:product((1,2,3,4))}</b>
         <c>{f:product((1,2),(3,4))}</c>
         <d>{f:product(1,2,?,4)(3)}</d>
         <e>{f:product#4(1,2,3,4)}</e>
      </out>
   </xsl:template>
</xsl:stylesheet>
