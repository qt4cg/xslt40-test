<xsl:stylesheet version="4.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs">
    
    <!-- error if an xsl:record used in the sequence constructor of an element -->
    
    <xsl:template name="main">
        <out>
            <xsl:record e1="'red'" e2="'blue'" e3="'green'"/>
        </out>   
    </xsl:template>   
    
</xsl:stylesheet>