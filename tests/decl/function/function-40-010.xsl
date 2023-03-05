<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:f="http://f/"
  exclude-result-prefixes="#all">

<xsl:function name="f:append" as="item()*">
  <xsl:param name="value" as="item()*"/>
  <xsl:param name="suffix" as="item()*" required="no" select="()"/>
  <xsl:sequence select="$value, $suffix"/>
</xsl:function>


  <xsl:template name="xsl:initial-template">
    <out>
      <a>
        <xsl:value-of select="f:append(3, 4)"/>
      </a>
      <b>
        <xsl:value-of select="f:append(3)"/>
      </b>
    </out>
  </xsl:template>
</xsl:stylesheet>
