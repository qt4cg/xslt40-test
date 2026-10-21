<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">
<xsl:output omit-xml-declaration="yes"/>
<xsl:template name="xsl:initial-template">
<out><xsl:for-each select="(10,20)"><xsl:switch select="."><xsl:when test="if (position() eq 1) then 10 else 20"><v item="{.}" position="{position()}" size="{last()}"/></xsl:when></xsl:switch><after item="{.}" position="{position()}" size="{last()}"/></xsl:for-each></out>
</xsl:template>
</xsl:stylesheet>
