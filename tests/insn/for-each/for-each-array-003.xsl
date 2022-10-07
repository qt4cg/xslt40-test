<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:array="http://www.w3.org/2005/xpath-functions/array">
   
   <xsl:variable name="in" select="[1, 2, 5, 10 to 15]"/>
   <xsl:param name="sep">|</xsl:param>
   <xsl:template name="xsl:initial-template">
      <out>
         <xsl:for-each select="array:members($in)" separator="{$sep}">
            <xsl:value-of select="count(unparcel(.))"/>
         </xsl:for-each>
      </out>
   </xsl:template>
</xsl:transform>