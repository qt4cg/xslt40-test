<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">
  
  <xsl:function name="sum" as="xs:integer" visibility="private">
    <xsl:param name="a" as="xs:integer"/>
    <xsl:param name="b" as="xs:integer"/>
    <xsl:param name="c" as="xs:integer"/>
    <xsl:sequence select="$a + $b + $c"/>
  </xsl:function>
  
  
  <xsl:template name="xsl:initial-template">
    <out>
      <!-- Outer call to fn:sum, inner call to Q{}sum defined locally -->
      <xsl:value-of select="sum(sum(10, 11, 12), 0)"/>
    </out>
  </xsl:template>
</xsl:stylesheet>
