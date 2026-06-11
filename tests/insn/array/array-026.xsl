<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:math="http://www.w3.org/2005/xpath-functions/math" 
   exclude-result-prefixes="xs math" version="3.0" expand-text="true">
  
  <!-- construct array from JNodes -->
  
  <xsl:template name="xsl:initial-template"> 
    <xsl:variable name="array" select="[[1,2,3], [4,5,6]]"/>
    <xsl:variable name="t" as="item()">
      <xsl:array select="$array/child::*"/>
    </xsl:variable>
    <out a="{$t instance of array(*)}"
         b="{deep-equal($t?1, [1,2,3])}"
         c="{deep-equal($t?2, [4,5,6])}"/>
  </xsl:template>
  
  
  
</xsl:stylesheet>