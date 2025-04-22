<xsl:stylesheet version="4.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:b="NSb" xmlns:c="NSc" xmlns:d="NSd" xmlns:e="NSe" xmlns:f="NSf" xmlns:g="NSg" xmlns:h="NSh"
    exclude-result-prefixes="map xs b c d e f g h">
    
    <!-- test xsl prefixed standard attributes on xsl:record-->
    
    <xsl:include href="to-json.xsl"/> 
    <!-- TODO - add some parts that depend on some of the attributes -->
    <xsl:template name="main">
        <xsl:variable name="m" as="item()">
            <xsl:record xsl:default-collation="http://www.w3.org/2005/xpath-functions/collation/codepoint" xsl:default-mode="b"
                xsl:default-validation="preserve" xsl:exclude-result-prefixes="c d e"
                xsl:expand-text="true" xsl:extension-element-prefixes="f g h" 
                xsl:schema-role="output" xsl:version="3.1"
                xsl:use-when="true()" xsl:xpath-default-namespace="b" data="'Some data'">
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