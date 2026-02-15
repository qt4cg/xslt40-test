<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:f="http://f/"
  exclude-result-prefixes="#all">

  <xsl:function name="f:add" as="xs:integer">
    <xsl:param name="x" as="xs:integer"/>
    <xsl:param name="y" as="xs:integer" required="no" select="1"/>
    <xsl:sequence select="$x + $y"/>
  </xsl:function>
  
  <xsl:variable name="add1" select="f:add#1"/>
  <xsl:variable name="add2" select="f:add#2"/>


  <xsl:template name="xsl:initial-template">
    <out>
      <a>
        <xsl:value-of select="$add2(3,4)"/>
      </a>
      <b>
        <xsl:value-of select="$add1(3)"/>
      </b>
    </out>
  </xsl:template>
</xsl:stylesheet>
