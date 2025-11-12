<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:array="http://www.w3.org/2005/xpath-functions/array"
   xmlns:my="http://my.com/"
   exclude-result-prefixes="#all"
>

<xsl:template name="xsl:initial-template">
  <xsl:variable name="a" as="array(*)">
    <xsl:array>
      <xsl:array-member select="1,2"/>
      <xsl:array-member select="3,4"/>
    </xsl:array>
  </xsl:variable>
  <out ok="{deep-equal($a, [(1,2), (3,4)])}"/>
</xsl:template>
  


</xsl:stylesheet>
