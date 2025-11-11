<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">
  
  <xsl:function name="divide" as="xs:double" visibility="private">
    <xsl:param name="dividend" as="xs:double"/>
    <xsl:param name="divisor" as="xs:double"/>
    <xsl:select>$dividend div $divisor</xsl:select>
  </xsl:function>
  
  
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="divide-a" select="divide#2"/>
    <out>
      <xsl:value-of select="$divide-a(9, 3)"/>
    </out>
  </xsl:template>
</xsl:stylesheet>
