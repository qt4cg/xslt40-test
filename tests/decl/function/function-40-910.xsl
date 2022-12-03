<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="http://f/" exclude-result-prefixes="#all">

  <!-- Default value expression accesses other parameters -->

  <xsl:function name="f:add" as="xs:integer">
    <xsl:param name="x" as="xs:integer" required="1"/>
    <xsl:param name="y" as="xs:integer" required="0" select="$x + 1"/>
    <xsl:sequence select="sum(($x, $y))"/>
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
