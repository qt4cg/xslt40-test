<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                exclude-result-prefixes="#all" version="4.0">
  <!-- The for-each form retains empty members and evaluates select with per-line focus. -->
  <xsl:template match="/">
    <xsl:variable name="a" as="array(*)">
      <xsl:array for-each="order/line"
                 select="if (@sku='B') then () else (string(@sku),position(),last())"/>
    </xsl:variable>
    <out members="{array:size($a)}" first="{string-join($a(1) ! string(.),'|')}"
         empty="{empty($a(2))}" last="{string-join($a(3) ! string(.),'|')}"/>
  </xsl:template>
</xsl:stylesheet>
