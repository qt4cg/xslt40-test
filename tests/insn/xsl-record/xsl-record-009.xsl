<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="map xs">

    <!-- xsl:fallback children of xsl:record -->

    <xsl:template name="main">
        <xsl:variable name="m" as="item()">
            <xsl:record e1="'red'" e2="'blue'" e3="'green'">
                <xsl:fallback><e/></xsl:fallback>
                <xsl:fallback><f/></xsl:fallback>
            </xsl:record>
        </xsl:variable>
        <out e1="{$m?e1}" e2="{$m?e2}"/>
    </xsl:template>

</xsl:stylesheet>
