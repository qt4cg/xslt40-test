<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="urn:functions"
  exclude-result-prefixes="#all">
  <!-- An omitted keyword argument requests its default; () is a supplied value. -->
  <xsl:function name="f:join" as="xs:string">
    <xsl:param name="a" as="xs:string"/>
    <xsl:param name="b" as="xs:string?" required="no" select="'B'"/>
    <xsl:param name="c" as="xs:string" required="no" select="'C'"/>
    <xsl:sequence select="$a || '|' || $b || '|' || $c"/>
  </xsl:function>
  <xsl:template name="xsl:initial-template">
    <out omitted="{f:join(c := 'Y', a := 'A')}"
         empty="{f:join(c := 'Y', a := 'A', b := ())}"
         arrow="{'A' => f:join(c := 'Y')}"/>
  </xsl:template>
</xsl:stylesheet>
