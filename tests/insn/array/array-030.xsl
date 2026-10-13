<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                exclude-result-prefixes="#all" version="4.0">
  <!-- Order-export members retain original source-node identity and explicit non-document order. -->
  <xsl:template match="/">
    <xsl:variable name="lines" select="order/line"/>
    <xsl:variable name="a" as="array(*)">
      <xsl:array>
        <xsl:array-member select="($lines[3],$lines[1])"/>
        <xsl:array-member select="$lines[2]"/>
      </xsl:array>
    </xsl:variable>
    <out members="{array:size($a)}" grouped="{count($a(1))}"
         first-same="{$a(1)[1] is $lines[3]}" second-same="{$a(1)[2] is $lines[1]}"
         last-same="{$a(2) is $lines[2]}"
         order="{string-join($a(1) ! string(@sku),'|')}"/>
  </xsl:template>
</xsl:stylesheet>
