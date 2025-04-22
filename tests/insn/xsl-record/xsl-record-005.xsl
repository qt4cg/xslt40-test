<xsl:stylesheet version="4.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs">
    
    <!-- test for an 'empty' xsl:record-->
    
    <xsl:template name="main">
        <xsl:variable name="m" as="item()">
            <xsl:record/>
        </xsl:variable>
        <out size="{map:size($m)}"/>   
    </xsl:template>   
    
</xsl:stylesheet>