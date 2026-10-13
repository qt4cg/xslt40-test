<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:p="urn:native" exclude-result-prefixes="#all"
    fixed-namespaces="#standard p=urn:fixed">
  <xsl:mode name="p:m" on-no-match="fail"/>
  <xsl:template name="main">
    <xsl:variable name="node"><item/></xsl:variable>
    <out><xsl:apply-templates xmlns:p="urn:local" select="$node/item" mode="p:m"/></out>
  </xsl:template>
  <xsl:template xmlns:p="urn:other" match="item" mode="p:m"><hit>fixed</hit></xsl:template>
</xsl:stylesheet>
