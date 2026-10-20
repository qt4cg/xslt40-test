<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:array="http://www.w3.org/2005/xpath-functions/array"
 xmlns:f="urn:array-select-boundaries" exclude-result-prefixes="#all">
<xsl:output omit-xml-declaration="yes"/>
<xsl:template name="xsl:initial-template">
<xsl:variable name="v" as="item()*"><xsl:select as="empty-sequence()" xml:space="preserve"> &#x9;&#xA; </xsl:select></xsl:variable><out count="{count($v)}"/>
</xsl:template>
</xsl:stylesheet>
