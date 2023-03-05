<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:f="http://f/"
  exclude-result-prefixes="#all">

<xsl:function name="f:twizzle" as="xs:integer">
  <xsl:param name="value" as="xs:integer"/>
  <xsl:param name="positive" as="xs:boolean" required="no" select="true()"/>
  <xsl:sequence select="$value * (if ($positive) then 1 else -1)"/>
</xsl:function>


  <xsl:template name="xsl:initial-template">
    <out>
      <a>
        <xsl:value-of select="f:twizzle(3)"/>
      </a>
      <b>
        <xsl:value-of select="f:twizzle(3, false())"/>
      </b>
    </out>
  </xsl:template>
</xsl:stylesheet>
