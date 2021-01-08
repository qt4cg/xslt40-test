<?xml version="1.0" encoding="utf-8"?> 

<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    expand-text="yes"
    >
    
    
    <xsl:variable name="person" as="record('first name' as xs:string, 'last name' as xs:string)" select="map{'first name':'John', 'last name':'Smith'}"/>
    
    
    <xsl:template name="xsl:initial-template">
        <out>{$person?"first name"}</out>
    </xsl:template>  
    
</xsl:stylesheet>
