<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:array="http://www.w3.org/2005/xpath-functions/array"
 xmlns:f="urn:array-select-boundaries" exclude-result-prefixes="#all">
<xsl:output omit-xml-declaration="yes"/>
<xsl:template name="xsl:initial-template">
<xsl:variable name="inside" as="xs:boolean"><xsl:select default-collation="http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive">compare('A','a') eq 0</xsl:select></xsl:variable><out inside="{$inside}" restored="{compare('A','a') ne 0}"/>
</xsl:template>
</xsl:stylesheet>
