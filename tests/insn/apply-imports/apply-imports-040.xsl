<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:my="my" exclude-result-prefixes="xs my"
  version="4.0">


  <xsl:variable name="test">
    <data/>
  </xsl:variable>
  
  <xsl:param name="version" static="yes" select="'40'"/>
  <xsl:param name="streamable" static="yes" select="'false'"/>
  
  
  <xsl:mode _streamable="{$streamable}"/>
  
  <xsl:template name="main">
    <xsl:apply-templates select="$test"/>
  </xsl:template>

  <xsl:template match="/">
    <out>
      <xsl:apply-templates select="data">
        <xsl:with-param name="P" select="101"/>
        <xsl:with-param name="Q" select="102"/>
        <xsl:with-param name="R" select="103"/>
      </xsl:apply-templates>
    </out>
  </xsl:template>

  <xsl:template match="data">
    <xsl:param name="P"/>
    <xsl:attribute name="P" select="$P"/>
    <xsl:apply-imports _version="{$version}"/>
  </xsl:template>

  
  <xsl:import href="apply-imports-040a.xsl"/>

</xsl:stylesheet>
