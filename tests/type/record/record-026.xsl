<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="urn:order-types"
 xmlns:map="http://www.w3.org/2005/xpath-functions/map" exclude-result-prefixes="#all">
<!-- Named record constructor uses declared field order and retains an explicit empty field. -->
<xsl:record-type name="t:line" constructor="yes"><xsl:field name="sku" as="xs:string"/><xsl:field name="quantity" as="xs:integer"/><xsl:field name="note" as="xs:string?"/></xsl:record-type>
<xsl:template name="xsl:initial-template"><xsl:variable name="line" as="t:line" select="t:line('A',2,())"/><out sku="{$line?sku}" quantity="{$line?quantity}" note="{map:contains($line,'note')}" empty="{empty($line?note)}" typed="{$line instance of t:line}"/></xsl:template>
</xsl:stylesheet>
