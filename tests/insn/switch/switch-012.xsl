<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">
<xsl:output omit-xml-declaration="yes"/>
<xsl:template name="xsl:initial-template">
<xsl:variable name="nodes" as="element()*"><n>1</n><n>2</n></xsl:variable><out><xsl:switch select="$nodes"><xsl:when test="1" select="42"/></xsl:switch></out>
</xsl:template>
</xsl:stylesheet>
