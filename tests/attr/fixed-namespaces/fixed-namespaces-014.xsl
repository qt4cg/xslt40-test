<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:p="urn:native" exclude-result-prefixes="#all"
    fixed-namespaces="#standard p=urn:fixed" default-mode="p:root">
  <xsl:mode name="p:root" on-no-match="fail"/>
  <xsl:mode name="p:scoped" on-no-match="fail"/>
  <xsl:template name="main">
    <xsl:variable name="node"><item/></xsl:variable>
    <out>
      <xsl:apply-templates select="$node/item"/>
      <xsl:apply-templates xmlns:p="urn:local" default-mode="p:scoped" select="$node/item"/>
    </out>
  </xsl:template>
  <xsl:template match="item" mode="Q{urn:fixed}root"><root/></xsl:template>
  <xsl:template match="item" mode="Q{urn:fixed}scoped"><scoped/></xsl:template>
</xsl:stylesheet>
