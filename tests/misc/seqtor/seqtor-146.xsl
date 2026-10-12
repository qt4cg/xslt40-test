<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="urn:order-types"
 xmlns:map="http://www.w3.org/2005/xpath-functions/map" exclude-result-prefixes="#all">
<!-- Sequence-valued select body evaluates with the current item, position and size. -->
<xsl:template name="xsl:initial-template">
<out><xsl:for-each select="('A','B','C')"><xsl:variable name="row" as="item()*"><xsl:select>(., position(), last())</xsl:select></xsl:variable><row value="{string-join($row ! string(.),'|')}"/></xsl:for-each></out>
</xsl:template>
</xsl:stylesheet>
