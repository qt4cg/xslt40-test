<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:map="http://www.w3.org/2005/xpath-functions/map" 
    exclude-result-prefixes="#all" expand-text="yes">
    
    
    <xsl:key name="isbn" match="book | audiobook" use="ISBN-13"/>
    <xsl:variable name="index" select="map-for-key(#isbn, ())" as="map(*)"/>
    
    <xsl:template match="/">
        <out><xsl:copy-of select="map:remove($index,'978-3518366752') => map:contains('978-3518366752')"/></out>
    </xsl:template>
    
    
</xsl:transform>
