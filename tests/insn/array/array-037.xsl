<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:array="http://www.w3.org/2005/xpath-functions/array"
 xmlns:f="urn:array-select-boundaries" exclude-result-prefixes="#all">
<xsl:output omit-xml-declaration="yes"/>
<xsl:template name="xsl:initial-template">
<xsl:variable name="n" as="element(n)"><n/></xsl:variable><xsl:variable name="a" as="array(*)"><xsl:array><xsl:array-member><xsl:array-member select="$n"/><xsl:array-member select="()"/><xsl:array-member select="1,2"/></xsl:array-member></xsl:array></xsl:variable><out size="{array:size($a)}" count="{count($a(1))}" same="{$a(1)[1] is $n}" tail="{deep-equal(subsequence($a(1),2),(1,2))}"/>
</xsl:template>
</xsl:stylesheet>
