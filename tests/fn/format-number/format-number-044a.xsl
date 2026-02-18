<?xml version="1.0"?>
<?spec xslt#format-number?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
   xmlns:bin="http://expath.org/ns/binary"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   version="3.0">

   <!-- Test format-number() applied to large numbers (test how good the rounding is) -->
   <!-- Bug report from Pedro Christian against Saxon 7.8 -->



   <xsl:template match="doc">
      <out bin="{bin:pack-double(1E100 div 3) => xs:hexBinary()}" str="{string(1E100 div 3)}">
         <xsl:value-of select="format-number(1E100 div 3, '#####,#####')"/>
      </out>
   </xsl:template>

</xsl:stylesheet>
