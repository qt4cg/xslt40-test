<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
   <xsl:variable name="in" select="[1 to 10, 10 to 15, -4 to -3]"/>
   <xsl:template name="xsl:initial-template">
      <out>
         <xsl:for-each array="$in" separator=" ">
            <xsl:sort select="count(?value)"/>
            <xsl:value-of select="sum(?value)"/>
         </xsl:for-each>
      </out>
   </xsl:template>
</xsl:transform>