<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" expand-text="yes">
  <!-- Purpose: is it an error to match both halves of a union pattern? Saxon bug 6663 -->
  
  <xsl:mode on-no-match="shallow-copy" on-multiple-match="fail"/>
  
  <xsl:variable name="nodes" as="element()*">
    <x one="1" two="2"/>
  </xsl:variable>
  
 
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:apply-templates select="$nodes"/>
    </out>
  </xsl:template>
  
  <xsl:template match="x[@one='1'] | x[@two='2']">
    <xsl:sequence select="."/>
  </xsl:template>
  
  
  
  
  
  
</xsl:transform>
