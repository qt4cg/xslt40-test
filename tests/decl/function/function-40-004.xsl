<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:f="http://f/"
  exclude-result-prefixes="#all">


<!-- Non-overlapping variadic functions -->

  <xsl:template name="xsl:initial-template">
    <out>
      <a>
        <xsl:value-of select="f:add(3,4)"/>
      </a>
      <b>
        <xsl:value-of select="f:add(3)"/>
      </b>
      <c>
        <xsl:value-of select="f:add()"/>
      </c>
    </out>
  </xsl:template>
  
  <xsl:function name="f:add" as="xs:integer">
    <xsl:param name="x" as="xs:integer"/>
    <xsl:param name="y" as="xs:integer" required="no" select="1"/>
    <xsl:sequence select="$x + $y"/>
  </xsl:function>
  
  <xsl:function name="f:add" as="xs:integer">
    <xsl:sequence select="0"/>
  </xsl:function>
</xsl:stylesheet>
