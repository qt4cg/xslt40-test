<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">
<xsl:output omit-xml-declaration="yes"/>
<xsl:template name="xsl:initial-template">
<xsl:variable name="nodes" as="element()*"><n id="A"/><n id="B"/></xsl:variable><xsl:variable name="result" as="element()*"><xsl:switch select="1"><xsl:when test="1" select="reverse($nodes)"/></xsl:switch></xsl:variable><out count="{count($result)}" first="{$result[1]/@id}" same="{$result[1] is $nodes[2]}" last="{$result[2]/@id}"/>
</xsl:template>
</xsl:stylesheet>
