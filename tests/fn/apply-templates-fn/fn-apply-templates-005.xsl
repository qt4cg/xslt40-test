<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="4.0">
    
  <xsl:template match="/">
      <xsl:apply-templates select="//*:test-case[1]" mode="m">
          <xsl:with-param name="A" select="'a1'"/>
          <xsl:with-param name="B" select="'b1'" tunnel="yes"/>
      </xsl:apply-templates>   
  </xsl:template>
    
  <xsl:mode name="m"/>
    
  <xsl:template match="*:test-case" mode="m">
      <out>
          <xsl:select>apply-templates(*:description, 
                    {'mode': '#current',
                     'params': {#A: 'a2'},
                     'tunnel-params': {#C: 'c1'}
                     })
          </xsl:select>
      </out>
  </xsl:template>

  <xsl:template match="*:description" mode="m">
      <xsl:param name="A"/>
      <xsl:param name="B" tunnel="yes"/>
      <xsl:param name="C" tunnel="yes"/>
        <a><xsl:value-of select="$A"/></a>
        <b><xsl:value-of select="$B"/></b>
        <c><xsl:value-of select="$C"/></c>
        <val><xsl:value-of select="."/></val>
  </xsl:template>
    
</xsl:stylesheet>