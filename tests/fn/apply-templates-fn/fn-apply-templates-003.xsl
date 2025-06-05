<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="4.0">
    
  <xsl:template match="/">
      <out val="{apply-templates(//*:test-case[1]/*:description, {'mode': #m})}"/>   
  </xsl:template>
    
  <xsl:mode name="m"/>
    
  <xsl:template match="*:description">
      <xsl:value-of select="."/>
  </xsl:template>
    
  <xsl:template match="*:description" mode="m">
    <xsl:value-of select="'++' || . || '++'"/>
  </xsl:template>
    
</xsl:stylesheet>