<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="#all"
    expand-text="yes">
    
    <xsl:param name="streamable" as="xs:boolean" static="yes" select="true()"/>
    
    <xsl:mode on-no-match="shallow-copy" _streamable="{$streamable}"/>
    
    <xsl:output indent="yes" method="xml"/>
    
    <xsl:template match="root">
        <xsl:copy>
            <xsl:fork>
                <xsl:for-each-group select="item" group-by="@category">
                    <category name="{current-grouping-key()}">
                        <xsl:apply-templates select="current-group()"/>
                    </category>
                </xsl:for-each-group>
            </xsl:fork>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="item/@category"/>
    
    <xsl:template match="/" name="xsl:initial-template">
        <xsl:copy>
            <xsl:apply-templates/>
            <!--<xsl:comment>Run with {system-property('xsl:product-name')} {system-property('xsl:product-version')} at {current-dateTime()}</xsl:comment>-->
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>