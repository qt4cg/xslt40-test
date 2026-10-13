<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                exclude-result-prefixes="#all" version="4.0">
  <!-- Nested map and empty/nonempty array values remain singleton members without flattening. -->
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="a" as="array(*)">
      <xsl:array>
        <xsl:array-member select="map{'sku':'A','lots':[]}"/>
        <xsl:array-member select="['B','C']"/>
        <xsl:array-member select="[]"/>
      </xsl:array>
    </xsl:variable>
    <out members="{array:size($a)}" map="{$a(1) instance of map(*)}"
         sku="{$a(1)?sku}" lots="{array:size($a(1)?lots)}"
         nested="{$a(2) instance of array(*)}" nested-size="{array:size($a(2))}"
         nested-second="{$a(2)(2)}" empty-array="{array:size($a(3))}"
         empty-array-is-item="{count($a(3))}"/>
  </xsl:template>
</xsl:stylesheet>
