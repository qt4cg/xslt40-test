<?xml version="1.0"?> 


<!-- on-no-match=shallow-copy-all, maps --> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs">

  <xsl:mode on-no-match="shallow-copy-all"/> 
 
  <xsl:template name="xsl:initial-template">
    <xsl:apply-templates select="map{'red':12, 'green':13, 'yellow':14, 'blue':15}"/>
  </xsl:template>
  
  <xsl:template match="record(red)"/>

  <xsl:template match="record(yellow)">
    <xsl:map-entry key="'orange'" select="20"/>
    <xsl:map-entry key="'lilac'" select="21"/>
  </xsl:template>
  
  <xsl:template match="record(blue)">
    <xsl:map-entry key="'blue'" select="25"/>
  </xsl:template>
  
 
    
</xsl:stylesheet>