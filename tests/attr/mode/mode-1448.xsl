<?xml version="1.0"?>

<!-- mode-default001 -->
<!-- Michael Kay -->
<!-- xsl:default-mode = a normal mode = on literal result elements --> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs">
 
  <xsl:template match="/" mode="dm">
    <root xsl:default-mode="dm"><xsl:apply-templates/></root>
  </xsl:template>
  
  <xsl:template match="bktshort" mode="dm">
    <book xsl:default-mode="dm">
      <xsl:apply-templates mode="#current"/>
    </book>
  </xsl:template>
  
  <xsl:template match="bktshort/text()" mode="dm">
    <QED><xsl:value-of select="."/></QED>
  </xsl:template>
  
  <xsl:template match="v | chapter/text()" mode="dm"/>
   
</xsl:stylesheet>