<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    expand-text="yes"
    >
    
    <!-- Duplicate field names -->
    <xsl:variable name="person" as="record(first, middle, last, middle)" select="map{'first':'John', 'last':'Smith'}"/>
    
    
    <xsl:template name="xsl:initial-template">
        <out>{$person?last}</out>
    </xsl:template>  
    
</xsl:stylesheet>
