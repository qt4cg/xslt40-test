<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:array="http://www.w3.org/2005/xpath-functions/array"
 xmlns:f="urn:array-select-boundaries" exclude-result-prefixes="#all">
<xsl:output omit-xml-declaration="yes"/>
<xsl:template name="xsl:initial-template">
<xsl:variable name="checks" as="xs:boolean*"><xsl:for-each select="('A','B')"><xsl:variable name="before" select="(.,position(),last())"/><xsl:variable name="a" as="array(*)"><xsl:array for-each="10 to 11" select="(.,position(),last())"/></xsl:variable><xsl:sequence select="deep-equal($before,(.,position(),last())) and deep-equal($a,[(10,1,2),(11,2,2)])"/></xsl:for-each></xsl:variable><out restored="{every $b in $checks satisfies $b}"/>
</xsl:template>
</xsl:stylesheet>
