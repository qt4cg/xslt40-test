<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
               xmlns:xs="http://www.w3.org/2001/XMLSchema"
               xmlns:f="http://local.functions/"
               version="4.0"
               exclude-result-prefixes="#all"
               expand-text="yes">
   
   <xsl:template name="xsl:initial-template">
      <out>
         <a>{f:val('abc')}</a>
         <b>{f:val(42)}</b>
         <c>{f:val(xs:date('2025-10-21'))}</c>
         <d>{f:val('abc') instance of text()}</d>
         <e>{f:val(42) instance of text()}</e>
         <f><![CDATA[{f:val(parse-xml('<x>23</x>'))}]]></f>
         <g><![CDATA[{f:val(parse-xml('<x>23</x>')) instance of text()}]]></g>
         <h>{f:val(())}</h>
         <i>{f:val(()) instance of text()}</i>
         <j>{count(f:val(()))}</j>
      </out>
   </xsl:template>
   
   <xsl:function name="f:val">
      <xsl:param name="p"/>
      <xsl:text select="$p"/>
   </xsl:function>
</xsl:transform>