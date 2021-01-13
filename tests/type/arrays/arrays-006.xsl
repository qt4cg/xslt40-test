<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
   xmlns:saxon="http://saxon.sf.net/"
   xmlns:array="http://www.w3.org/2005/xpath-functions/array"
   extension-element-prefixes="saxon"
   exclude-result-prefixes="#all"
>

<xsl:template name="xsl:initial-template">
  <xsl:variable name="a" as="array(*)" select="array{ saxon:array-member((1,2)), saxon:array-member((3,4)) }"/>
  <out ok="{deep-equal($a, [(1,2), (3,4)])}"/>
</xsl:template>


</xsl:stylesheet>
