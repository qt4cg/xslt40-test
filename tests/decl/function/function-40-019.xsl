<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">
  
  <xsl:function name="divide" as="xs:double" visibility="private">
    <xsl:param name="dividend" as="xs:double"/>
    <xsl:param name="divisor" as="xs:double"/>
    <xsl:select>$dividend div $divisor</xsl:select>
  </xsl:function>
  
  
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:value-of select="divide(divisor := 3, dividend := 9)"/>
    </out>
  </xsl:template>
</xsl:stylesheet>
