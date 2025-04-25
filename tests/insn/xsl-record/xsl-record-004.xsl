<xsl:stylesheet version="4.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs">
    
    <!-- error if a non-map used in the sequence constructor of xsl:record-->
    
    <xsl:template name="main">
        <xsl:variable name="m" as="item()">
            <xsl:record _e1="'red'" e2="'blue'" e3="'green'">
                 <xsl:sequence select="17"/>
            </xsl:record>
        </xsl:variable>
        <e a="{$m?e1}"/>   
    </xsl:template>   
    
</xsl:stylesheet>