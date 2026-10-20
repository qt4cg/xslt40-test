<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:array="http://www.w3.org/2005/xpath-functions/array"
 xmlns:f="urn:array-select-boundaries" exclude-result-prefixes="#all">
<xsl:output omit-xml-declaration="yes"/>
<xsl:template name="xsl:initial-template">
<xsl:variable name="v" as="item()*"><xsl:select><xsl:fallback><xsl:sequence select="error()"/></xsl:fallback></xsl:select></xsl:variable><out empty="{empty($v)}"/>
</xsl:template>
</xsl:stylesheet>
