<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                exclude-result-prefixes="#all" version="4.0">
  <!-- An explicit empty member occupies a slot, while an empty sequence emits no member. -->
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="members" as="array(*)">
      <xsl:array>
        <xsl:array-member select="'A'"/>
        <xsl:array-member select="()"/>
        <xsl:array-member select="'B'"/>
      </xsl:array>
    </xsl:variable>
    <xsl:variable name="items" as="array(*)">
      <xsl:array>
        <xsl:sequence select="'A'"/>
        <xsl:sequence select="()"/>
        <xsl:sequence select="'B'"/>
      </xsl:array>
    </xsl:variable>
    <out members="{array:size($members)}" empty="{empty($members(2))}"
         last="{$members(3)}" emitted="{array:size($items)}" second="{$items(2)}"/>
  </xsl:template>
</xsl:stylesheet>
