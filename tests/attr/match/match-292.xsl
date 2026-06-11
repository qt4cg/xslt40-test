<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   version="3.0">
   
   <xsl:variable name="top" select="/"/>
   
   <xsl:template match="/.[. is $top]">
      <doc>42</doc>
   </xsl:template>
   
</xsl:stylesheet>