<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:mf="http://example.com/mf"
    exclude-result-prefixes="xs map mf" version="3.0">

    <xsl:variable name="map" as="map(*)">
        <xsl:map duplicates="op(',')">
            <xsl:map-entry key="'x'" select="1"/>
            <xsl:map-entry key="'y'" select="2"/>
            <xsl:map-entry key="'z'" select="3"/>
            <xsl:map-entry key="'x'" select="4"/>
            <xsl:map-entry key="'x'" select="5"/>
        </xsl:map>
    </xsl:variable>

    <xsl:template match="/" name="xsl:initial-template">
       <out result="{$map?x}"></out> 
    </xsl:template>

</xsl:stylesheet>
