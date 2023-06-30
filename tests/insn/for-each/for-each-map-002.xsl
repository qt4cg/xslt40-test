<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:map="http://www.w3.org/2005/xpath-functions/map">
   
   <xsl:variable name="in" select="map{'Jan':1, 'Feb':2, 'Mar':3, 'Apr':4, 'May':5, 'Jun':6, 'Jul':7, 'Aug':8, 'Sep':9, 'Oct':10, 'Nov':11, 'Dec':12}"/>
   <xsl:template name="xsl:initial-template">
      <out>
         <xsl:for-each select="map:pairs($in)">
            <xsl:sort select="?key"/>
            <xsl:if test="position() ne 1">|</xsl:if>
            <xsl:value-of select="?value"/>
         </xsl:for-each>
      </out>
   </xsl:template>
</xsl:transform>