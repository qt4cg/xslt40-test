<?xml version="1.0"?> 


<!-- mode/@as --> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs">

  <xsl:mode as="xs:integer+" on-no-match="deep-copy"/> 
  
  <xsl:variable name="colours">
    <red>12</red>
    <yellow>12</yellow>
    <green>12</green>
    <blue>12</blue>
  </xsl:variable>
 
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:apply-templates select="$colours/*"/>
    </out>
  </xsl:template>
  

  <xsl:template match="red|yellow">
    <xsl:sequence select="1"/>
  </xsl:template>
  
  <xsl:template match="green">
    <xsl:sequence select="2"/>
  </xsl:template>
  
 
    
</xsl:stylesheet>