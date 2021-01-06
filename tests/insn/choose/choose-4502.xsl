<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
>

<xsl:template name="xsl:initial-template">
 <xsl:variable name="y" select="year-from-date(current-date()) idiv 100"/> 
 <out>
   <xsl:choose>
     <xsl:when test="$y = 19" select="'Twentieth'"/>
     <xsl:when test="$y = 20" select="'Twenty-first'">Content not allowed</xsl:when>
     <xsl:otherwise select="'Umpteenth'"/>
   </xsl:choose>
 </out>
</xsl:template>


</xsl:stylesheet>
