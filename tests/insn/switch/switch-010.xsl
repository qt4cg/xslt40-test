<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">
<xsl:output omit-xml-declaration="yes"/>
<xsl:template name="xsl:initial-template">
<xsl:variable name="n" as="element(n)"><n>42</n></xsl:variable><out><xsl:switch select="$n"><xsl:when test="42" select="42"/><xsl:otherwise select="0"/></xsl:switch></out>
</xsl:template>
</xsl:stylesheet>
