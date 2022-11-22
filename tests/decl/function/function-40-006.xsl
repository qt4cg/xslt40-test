<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="http://f/" exclude-result-prefixes="#all">
  
  <!-- Default value supplied using sequence constructor -->

  <xsl:function name="f:add" as="xs:integer">
    <xsl:param name="x" as="xs:integer"/>
    <xsl:param name="y" as="xs:integer" required="no">
      <xsl:sequence select="1"/>
    </xsl:param>
    <xsl:sequence select="$x + $y"/>
  </xsl:function>


  <xsl:template name="xsl:initial-template">
    <out>
      <a>
        <xsl:value-of select="f:add(3, 4)"/>
      </a>
      <b>
        <xsl:value-of select="f:add(3)"/>
      </b>
    </out>
  </xsl:template>
</xsl:stylesheet>
