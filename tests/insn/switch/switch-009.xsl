<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="urn:order-types"
 xmlns:map="http://www.w3.org/2005/xpath-functions/map" exclude-result-prefixes="#all">
<!-- A matching empty-result branch ends selection instead of falling through. -->
<xsl:template name="xsl:initial-template">
<xsl:variable name="v" as="item()*"><xsl:switch select="'omit'">
<xsl:when test="()" select="error()"/><xsl:when test="'omit'" select="()"/>
<xsl:when test="'omit'" select="error()"/><xsl:otherwise select="error()"/>
</xsl:switch></xsl:variable><out count="{count($v)}"/>
</xsl:template>
</xsl:stylesheet>
