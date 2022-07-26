<?xml version="1.0"?> 


<!-- on-no-match=shallow-copy-all, maps --> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs">

  <xsl:mode on-no-match="shallow-skip-all"/> 
 
  <xsl:template name="xsl:initial-template">
    <out>
      <xsl:apply-templates select="map{'red':12, 'green':13, 'yellow':14, 'blue':15}"/>
    </out>
  </xsl:template>
  

  <xsl:template match="record(yellow)">
    <orange>20</orange>
    <lilac>21</lilac>
  </xsl:template>
  
  <xsl:template match="record(blue)">
    <blue>25</blue>
  </xsl:template>
  
 
    
</xsl:stylesheet>