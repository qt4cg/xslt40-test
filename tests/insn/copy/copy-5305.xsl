<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="#all">
  
  <!-- fn:copy applied to a JNode wrapping a map -->

  <xsl:template name="xsl:initial-template">
    <xsl:variable name="json">[{"a":1, "b":2}, {"a":10, "b":20}]</xsl:variable>
    <xsl:variable name="in" select="parse-json($json)"/>
    <xsl:variable name="jnodes" select="$in/*"/>
    <xsl:variable name="copies" select="copy-of($jnodes)"/>
    <out>
      <xsl:variable name="copies" as="item()*">
        <xsl:for-each select="$in/*">
          <xsl:copy>
            <xsl:copy-of select="jvalue(.)"/>
            <xsl:map-entry key="'a'" select="999"/>
          </xsl:copy>
        </xsl:for-each>
      </xsl:variable>
      <xsl:value-of select="serialize(array{$copies}, {'method': 'json'})"/>
    </out>
  </xsl:template>



</xsl:stylesheet>
