<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">
  
  <xsl:function name="current-date" as="xs:date" visibility="private">
    <!-- get current date without timezone -->
    <xsl:select>Q{http://www.w3.org/2005/xpath-functions}current-date() => adjust-date-to-timezone(())</xsl:select>
  </xsl:function>
  
  
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:value-of select="current-date()"/>
    </out>
  </xsl:template>
</xsl:stylesheet>
