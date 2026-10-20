<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:array="http://www.w3.org/2005/xpath-functions/array"
 xmlns:f="urn:array-select-boundaries" exclude-result-prefixes="#all">
<xsl:output omit-xml-declaration="yes"/>
<xsl:template name="xsl:initial-template">
<xsl:variable name="doc" as="element(root)"><root><n id="A"/><n id="B"/></root></xsl:variable><xsl:variable name="nodes" as="element()*"><xsl:select>reverse($doc/n)</xsl:select></xsl:variable><out count="{count($nodes)}" first="{$nodes[1]/@id}" same="{$nodes[1] is $doc/n[2]}" last="{$nodes[2]/@id}"/>
</xsl:template>
</xsl:stylesheet>
