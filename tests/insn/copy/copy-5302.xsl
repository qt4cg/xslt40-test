<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="#all">
  
  <!-- fn:copy-of applied to a JNode -->

  <xsl:template name="xsl:initial-template">
    <xsl:variable name="json">[{"a":1, "b":2}, {"a":10, "b":20}]</xsl:variable>
    <xsl:variable name="in" select="parse-json($json)"/>
    <xsl:variable name="jnodes" select="$in/*"/>
    <xsl:variable name="copies" select="copy-of($jnodes)"/>
    <out same="{deep-equal($jnodes, $copies, {'items-equal': op('is')})}"/>
  </xsl:template>



</xsl:stylesheet>
