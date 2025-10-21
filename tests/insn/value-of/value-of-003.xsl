<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
               xmlns:xs="http://www.w3.org/2001/XMLSchema"
               xmlns:f="http://local.functions/"
               version="4.0"
               exclude-result-prefixes="#all"
               expand-text="yes">
   
   <xsl:template name="xsl:initial-template">
      <out>
         <a>{f:val('abc', 'def')}</a>
         <b>{f:val(42, 19)}</b>
         <c>{f:val(xs:date('2025-10-21'), '')}</c>
         <d>{f:val('abc', 'def') instance of text()}</d>
         <e>{f:val(42, 43) instance of text()}</e>
         <f>{count(f:val(42, 43))}</f>
      </out>
   </xsl:template>
   
   <xsl:function name="f:val">
      <xsl:param name="p"/>
      <xsl:param name="q"/>
      <xsl:value-of select="$p, $q"/>
   </xsl:function>
</xsl:transform>