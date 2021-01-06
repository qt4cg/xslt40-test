<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
>

<xsl:template name="xsl:initial-template">
 <xsl:variable name="y" select="year-from-date(current-date()) idiv 100"/> 
 <out>
   <xsl:if test="$y = 19" else="'Twenty-first'">Twentieth</xsl:if>
 </out>
</xsl:template>


</xsl:stylesheet>
