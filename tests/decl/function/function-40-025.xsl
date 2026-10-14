<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="urn:functions"
  exclude-result-prefixes="#all">
  <xsl:variable name="a" as="xs:string" select="'GLOBAL'"/>
  <!-- Neither the earlier parameter nor a caller local is in scope in defaults. -->
  <xsl:function name="f:scope" as="xs:string">
    <xsl:param name="a" as="xs:string"/>
    <xsl:param name="b" as="xs:string" required="no" select="$a"/>
    <xsl:param name="c" as="xs:string" required="no">
      <xsl:sequence select="$a"/>
    </xsl:param>
    <xsl:sequence select="$a || '|' || $b || '|' || $c"/>
  </xsl:function>
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="a" as="xs:string" select="'CALLER'"/>
    <out defaults="{f:scope('SUPPLIED')}" supplied="{f:scope($a, 'B', 'C')}"/>
  </xsl:template>
</xsl:stylesheet>
