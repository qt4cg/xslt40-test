<?xml version="1.0" encoding="iso-8859-1"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0">

  <!-- PURPOSE: Test xsl:fallback is ignored if forwards compatibility is not in effect. -->
  <?spec xslt#fallback?>
  <xsl:template match="/">
    <out>
      <xsl:if test="static-base-uri() = 'http://not-me-guv/'">
        <xsl:magic version="2.0">
          <xsl:fallback>Fallback should not apply</xsl:fallback>
        </xsl:magic>
        <xsl:text>42</xsl:text>
      </xsl:if>
    </out>
  </xsl:template>
   
</xsl:stylesheet>
