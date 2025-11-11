<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">
  
  <xsl:function name="code" as="xs:string" visibility="private">
    <xsl:param name="node" as="node()" required="no" select="."/>
    <xsl:sequence select="$prefix || ($node ! @code)"/>
  </xsl:function>
  
  <xsl:variable name="data">
    <a code="blue"/>
  </xsl:variable>
  
  <xsl:variable name="prefix" select="'%'"/>
  
  <xsl:template match="a">
    <xsl:value-of select="code()"/>
  </xsl:template>
  
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:apply-templates select="$data/a"/>
    </out>
  </xsl:template>
</xsl:stylesheet>
