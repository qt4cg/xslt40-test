<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="http://f/" exclude-result-prefixes="#all">

  <xsl:function name="f:code" as="xs:string">
    <xsl:param name="node" as="node()" required="no" select="$data/a/@code"/>
    <xsl:sequence select="$node ! @code"/>
  </xsl:function>

  <xsl:variable name="data">
    <a code="blue"/>
  </xsl:variable>

  <xsl:template match="a">
    <xsl:value-of select="f:code()"/>
  </xsl:template>

  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:apply-templates select="$data/a"/>
    </out>
  </xsl:template>
</xsl:stylesheet>
