<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="urn:order-types"
 xmlns:map="http://www.w3.org/2005/xpath-functions/map" exclude-result-prefixes="#all">
<!-- Overlapping status alternatives select the first match and do not evaluate later tests. -->
<xsl:template name="xsl:initial-template"><out><xsl:switch select="'ready'">
<xsl:when test="('ready','queued')" select="'first'"/>
<xsl:when test="error()" select="'later'"/>
<xsl:otherwise select="error()"/>
</xsl:switch></out></xsl:template>
</xsl:stylesheet>
