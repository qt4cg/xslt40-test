<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="#all">
  
  <!-- fn:copy applied to a JNode wrapping a map -->

  <xsl:template name="xsl:initial-template">
    <xsl:variable name="json">{"a":[44,55,66], "b":[77,78,79]}</xsl:variable>
    <xsl:variable name="in" select="parse-json($json)"/>
    <xsl:variable name="jnodes" select="$in/*"/>
    <out>
      <xsl:variable name="copies">
        <xsl:array>
          <xsl:for-each select="$in/*">
            <xsl:copy>
              <xsl:sequence select="sum(.)"/>
            </xsl:copy>
          </xsl:for-each>
        </xsl:array>
      </xsl:variable>
      <xsl:value-of select="serialize($copies, {'method': 'json'})"/>
    </out>
  </xsl:template>



</xsl:stylesheet>
