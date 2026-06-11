<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:math="http://www.w3.org/2005/xpath-functions/math" 
   exclude-result-prefixes="xs math" version="3.0" expand-text="true">
  
  <!-- what does xsl:array-member actually return? -->
  
  <xsl:template name="xsl:initial-template">   
    <xsl:variable name="t" as="item()">
      <xsl:array-member select="(1,2,3)"/>
    </xsl:variable>
    <out a="{$t instance of jnode(*)}"
         b="{exists(jkey($t))}"
         c="{exists(jposition($t))}"
         d="{exists($t/..)}"
         e="{string-join(jvalue($t), '|')}"/>
  </xsl:template>
  
  
  
</xsl:stylesheet>