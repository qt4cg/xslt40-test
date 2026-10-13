<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="urn:order-types"
 xmlns:map="http://www.w3.org/2005/xpath-functions/map" exclude-result-prefixes="#all">
<!-- An enumeration alias accepts status strings and rejects unknown strings and integers. -->
<xsl:item-type name="t:status" as="enum('ready','queued')"/>
<xsl:template name="xsl:initial-template"><out ready="{'ready' instance of t:status}" unknown="{'lost' instance of t:status}" numeric="{1 instance of t:status}"/></xsl:template>
</xsl:stylesheet>
