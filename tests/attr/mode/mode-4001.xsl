<?xml version="1.0"?> 


<!-- on-no-match=shallow-copy-all, arrays --> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs">

  <xsl:mode on-no-match="shallow-copy-all"/> 

  
  <xsl:template name="xsl:initial-template">
    <xsl:apply-templates select="[1, 2, 3, [4, 5, 6]]"/>
  </xsl:template>
  
  <xsl:template match="record(value as array(*))">
    <xsl:array-member>
      <xsl:apply-templates select="?value"/>
    </xsl:array-member>
  </xsl:template>
  
  
  <xsl:template match="record(value as xs:integer)[?value mod 2 = 0]"/>
  
  <xsl:template match="record(value as xs:integer)[?value mod 2 = 1]">
    <xsl:array-member select="?value"/>
  </xsl:template>

  
  
  <xsl:template match=".[. instance of xs:integer][. mod 2 = 0]"/>
  
    
</xsl:stylesheet>