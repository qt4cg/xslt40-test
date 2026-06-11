<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:map="http://www.w3.org/2005/xpath-functions/map" 
    exclude-result-prefixes="#all" expand-text="yes">
    
    
    <xsl:key name="dim" match="book | audiobook" use=".//Dimension =!> xs:decimal()"/>
    <xsl:variable name="index" select="map-for-key(#dim)" as="map(*)"/>
    
    <xsl:template match="/">
        <out>
            <xsl:value-of select="map:get($index, 12.8)/Title" separator="/"/>
        </out>
    </xsl:template>
    
    
</xsl:transform>
