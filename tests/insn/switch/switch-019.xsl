<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">
<xsl:output omit-xml-declaration="yes"/>
<xsl:template name="xsl:initial-template">
<xsl:variable name="result" as="function(xs:integer) as xs:integer"><xsl:switch select="1"><xsl:when test="1" select="function($n as xs:integer) as xs:integer {$n + 1}"/></xsl:switch></xsl:variable><out value="{$result(41)}"/>
</xsl:template>
</xsl:stylesheet>
