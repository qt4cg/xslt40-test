<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                exclude-result-prefixes="#all" version="4.0">
  <!-- An array-member sequence constructor returning no items still creates an empty member. -->
  <xsl:template name="xsl:initial-template">
    <xsl:variable name="a" as="array(*)">
      <xsl:array>
        <xsl:array-member><xsl:sequence select="'before'"/></xsl:array-member>
        <xsl:array-member>
          <xsl:if test="false()"><xsl:sequence select="'optional'"/></xsl:if>
        </xsl:array-member>
        <xsl:array-member><xsl:sequence select="('after','tail')"/></xsl:array-member>
      </xsl:array>
    </xsl:variable>
    <out members="{array:size($a)}" empty="{empty($a(2))}"
         grouped="{count($a(3))}" values="{string-join($a(3),'|')}"/>
  </xsl:template>
</xsl:stylesheet>
