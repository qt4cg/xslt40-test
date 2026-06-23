<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:my="my" exclude-result-prefixes="xs my"
  version="4.0">


 
  <xsl:template match="data" priority="10">
    <xsl:param name="Q"/>
    <xsl:attribute name="Q" select="$Q"/>
    <xsl:next-match/>
  </xsl:template>
  
  <xsl:template match="data" priority="9">
    <xsl:param name="R"/>
    <xsl:attribute name="R" select="$R"/>
    <xsl:next-match/>
  </xsl:template>


</xsl:stylesheet>
