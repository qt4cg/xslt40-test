<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:mf="http://example.com/mf"
    exclude-result-prefixes="xs map mf" version="4.0">

    <xsl:variable name="map" as="map(*)">
        <xsl:variable name="in" select="[{'x':1, 'y':2, 'z':3}, {'a':10}]"/>
        <xsl:map duplicates="'use-last'">
            <xsl:copy-of select="$in/*"/>
            <xsl:map-entry key="'x'" select="4"/>
            <xsl:map-entry key="'x'" select="5"/>
        </xsl:map>
    </xsl:variable>

    <xsl:template match="/" name="xsl:initial-template">
       <out x="{$map?x}" a="{$map?a}"/> 
    </xsl:template>

</xsl:stylesheet>
