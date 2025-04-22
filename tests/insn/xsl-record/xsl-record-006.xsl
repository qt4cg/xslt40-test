<xsl:stylesheet version="4.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs">
    
    <!-- test unprefixed standard attributes on xsl:record-->
    
    <xsl:include href="to-json.xsl"/> 
    
    <xsl:template name="main">
        <xsl:variable name="m" as="item()">
            <xsl:record default-collation="'http://www.w3.org/2005/xpath-functions/collation/codepoint'" default-mode="'b'"
                default-validation="'preserve'" exclude-result-prefixes="'c d e'"
                expand-text="true()" extension-element-prefixes="'f g h'" 
                schema-role="'output'" version="3.1"
                use-when="true()" xpath-default-namespace="'b'" data="'Some data'">
                <xsl:map-entry key="'expression'">{3+5}</xsl:map-entry>
            </xsl:record>
        </xsl:variable>
        <json>
            <xsl:text>[</xsl:text>
            <xsl:for-each select="$m">
                <xsl:if test="position() ne 1">,</xsl:if>
                <xsl:apply-templates select="." mode="to-json"/>
            </xsl:for-each>
            <xsl:text>]</xsl:text>
        </json>           
    </xsl:template>   
    
</xsl:stylesheet>