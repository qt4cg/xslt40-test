<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">
<xsl:output omit-xml-declaration="yes"/>
<xsl:template name="xsl:initial-template">
<out><xsl:switch select="2"><xsl:when test="1" select="error()"/><xsl:when test="2"><xsl:sequence select="42"/></xsl:when><xsl:otherwise select="error()"/></xsl:switch></out>
</xsl:template>
</xsl:stylesheet>
