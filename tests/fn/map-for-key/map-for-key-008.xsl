<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:map="http://www.w3.org/2005/xpath-functions/map" 
    exclude-result-prefixes="#all" expand-text="yes">
    
    
    <xsl:key name="when" match="book | audiobook" use=".//PublicationDate =!> xs:date()"/>
    <xsl:variable name="index" select="map-for-key(#when, //books)" as="map(*)"/>
    
    <xsl:template match="/">
        <out>
            <initial>{map:size($index)}</initial>
            <after-put>{map:put($index, "extra", "item") => map:size()}</after-put>
            <after-remove>{map:remove($index, xs:date('2002-12-06')) => map:size()}</after-remove>
 
        </out>
    </xsl:template>
    
    
</xsl:transform>
