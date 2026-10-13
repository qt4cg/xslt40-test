<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="urn:order-types"
 xmlns:map="http://www.w3.org/2005/xpath-functions/map" exclude-result-prefixes="#all">
<!-- Enumeration aliases with the same local name but distinct expanded names remain distinct. -->
<xsl:item-type name="t:status" as="enum('ready')"/>
<xsl:item-type xmlns:t="urn:other-status" name="t:status" as="enum('queued')"/>
<xsl:template xmlns:u="urn:other-status" name="xsl:initial-template"><out primary="{'ready' instance of t:status}" other="{'queued' instance of u:status}" crossed="{'ready' instance of u:status}"/></xsl:template>
</xsl:stylesheet>
