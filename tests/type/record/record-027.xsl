<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="urn:order-types"
 xmlns:map="http://www.w3.org/2005/xpath-functions/map" exclude-result-prefixes="#all">
<!-- Static field initialization is excluded from constructor parameters and is retained in the record. -->
<xsl:record-type name="t:line" constructor="yes"><xsl:field name="sku" as="xs:string"/><xsl:field name="quantity" as="xs:integer"/><xsl:field name="kind" static="yes" as="xs:string" select="'line'"/></xsl:record-type>
<xsl:template name="xsl:initial-template"><xsl:variable name="line" as="t:line" select="t:line('B',3)"/><out sku="{$line?sku}" kind="{$line?kind}" quantity="{$line?quantity}" fields="{map:size($line)}"/></xsl:template>
</xsl:stylesheet>
