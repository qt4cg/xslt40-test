<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   exclude-result-prefixes="#all"
>

<xsl:template name="xsl:initial-template">
 <out>
   <xsl:switch select="year-from-date(current-date()) idiv 100">
     <xsl:when test="19" select="'Twentieth'"/>
     <xsl:when test="20" select="'Twenty-first'"/>
     <xsl:otherwise select="'Umpteenth'"/>
   </xsl:switch>
 </out>
</xsl:template>


</xsl:stylesheet>
