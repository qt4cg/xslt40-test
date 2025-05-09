<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math" 
    version="3.0">
    
    <xsl:output indent="yes"/>
    
    <xsl:mode streamable="yes"/>
    
    <xsl:template match="/">
        <xsl:fork>
            <xsl:for-each-group select="transactions/transaction" group-by="@account">
                <xsl:result-document href="account{current-grouping-key()}.xml">
                    <transactions account="{current-grouping-key()}">
                        <xsl:for-each-group select="copy-of(current-group())" 
                            group-by="year-from-date(xs:date(@date))">
                            <xsl:sort select="current-grouping-key()" order="descending"/>
                            <year value="{current-grouping-key()}">
                                <xsl:copy-of select="current-group()"/>
                            </year>
                        </xsl:for-each-group>
                    </transactions>
                </xsl:result-document>
            </xsl:for-each-group>
        </xsl:fork>
    </xsl:template>
    
</xsl:stylesheet>