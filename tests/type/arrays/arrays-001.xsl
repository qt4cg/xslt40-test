<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:array="http://www.w3.org/2005/xpath-functions/array"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   exclude-result-prefixes="#all"
>
  
  <xsl:param name="use-fallback" as="xs:boolean" static="yes" select="false()"/>

<xsl:template name="xsl:initial-template">
  <xsl:variable name="a" as="array(*)">
    <xsl:array>
      <xsl:fallback use-when="$use-fallback">
        <xsl:sequence select="array{1 to 10}"/>
      </xsl:fallback>
      <xsl:sequence select="1 to 10"/>
    </xsl:array>
  </xsl:variable>
  <out count="{array:size($a)}" values="{$a?*}" last="{$a?10}"/>
</xsl:template>


</xsl:stylesheet>
