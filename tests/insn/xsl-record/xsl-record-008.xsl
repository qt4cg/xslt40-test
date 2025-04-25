<xsl:stylesheet version="4.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="map xs">

    <!-- Potential shadow attributes ignored on xsl:record -->

    <xsl:template name="main">
        <xsl:variable name="m" as="item()">
            <xsl:record _duplicates="'underscored'" e1="'red'" e2="'blue'" e3="'green'"/>
        </xsl:variable>
        <out a="{$m?e1}" b="{$m?_duplicates}"/>
    </xsl:template>

</xsl:stylesheet>
